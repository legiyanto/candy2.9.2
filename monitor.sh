#!/bin/bash

# Token bot Telegram dan chat ID
BOT_TOKEN="6748351138:AAFSzF9GU_wEixEQEjCkIhPbPfZXjfGbTW0"
CHAT_ID="1058631695"

# URL untuk mengirim pesan ke Telegram
URL="https://api.telegram.org/bot$BOT_TOKEN/sendMessage"

# Database credentials
DB_USER="root"
DB_PASSWORD="admin"
DB_NAME="candy"

# Fungsi untuk mendapatkan informasi sistem
get_system_info() {
    # Mengambil informasi penggunaan CPU
    CPU_LOAD=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

    # Mengambil informasi penggunaan RAM
    MEM_TOTAL=$(free -m | awk '/^Mem:/{print $2}')
    MEM_USED=$(free -m | awk '/^Mem:/{print $3}')
    MEM_USAGE=$(echo "scale=2; $MEM_USED/$MEM_TOTAL*100" | bc)

    # Mengambil uptime sistem
    UPTIME=$(uptime -p)

    # Mengambil jumlah siswa yang login dari database
    LOGIN_COUNT_ONGOING=$(mariadb -u$DB_USER -p$DB_PASSWORD -D $DB_NAME -se "SELECT COUNT(*) FROM log WHERE text='testongoing';")
    LOGIN_COUNT_FINISHED=$(mariadb -u$DB_USER -p$DB_PASSWORD -D $DB_NAME -se "SELECT COUNT(*) FROM log WHERE text='testfinished';")
    LOGIN_COUNT=$(($LOGIN_COUNT_ONGOING - $LOGIN_COUNT_FINISHED))

    # Membuat pesan
    MESSAGE="📈 CPU Usage : $CPU_LOAD% 
	💾 RAM Usage : $MEM_USED MB / $MEM_TOTAL MB ($MEM_USAGE%)
	⏳  Uptime Server $UPTIME
	👨‍🎓 Jumlah Siswa Login : $LOGIN_COUNT"

    # Mengirim pesan ke Telegram
    curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE"
}

# Menunggu perintah /monitor
LAST_UPDATE_ID=0

while true; do
    # Memeriksa pesan terbaru dari bot
    UPDATES=$(curl -s "https://api.telegram.org/bot$BOT_TOKEN/getUpdates?offset=$LAST_UPDATE_ID")
    MESSAGE_TEXT=$(echo $UPDATES | jq -r '.result[-1].message.text')
    UPDATE_ID=$(echo $UPDATES | jq -r '.result[-1].update_id')

    # Jika perintah /monitor diterima, kirim informasi sistem
    if [ "$MESSAGE_TEXT" == "/monitor" ]; then
        get_system_info
        LAST_UPDATE_ID=$((UPDATE_ID + 1))
    fi

    # Tunggu 10 detik sebelum memeriksa lagi
    sleep 10
done