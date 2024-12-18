#!/bin/bash
# Fungsi untuk mencetak teks di tengah layar dengan warna
print_center() {
  local termwidth
  local padding
  local message="$1"
  local color="$2"
  termwidth=$(tput cols)
  padding=$(( (termwidth - ${#message}) / 2 ))
  printf "%s%${padding}s%s%s\n" "$color" "" "$message" "$(tput sgr0)"
}

# Warna merah
RED=$(tput setaf 1)

# Menampilkan banner teks ASCII dengan gaya slant di tengah
print_center "    __               _                   __      "
print_center "   / /   ___  ____ _(_)_  ______ _____  / /_____ "
print_center "  / /   / _ \\/ __ \`/ / / / / __ \`/ __ \\/ __/ __ \\"
print_center " / /___/  __/ /_/ / / /_/ / /_/ / / / / /_/ /_/ /"
print_center "/_____/\___/\\__, /_/\\__, /\\__,_/_/ /_/\\__/\\____/ "
print_center "           /____/  /____/                         "
print_center ""
print_center ""
print_center ""
print_center "+-+-+-+-+ +-+-+-+-+ +-+ +-+-+-+-+-+-+-+"
print_center "|T|J|K|T| |S|M|K|N| |5| |B|A|N|D|U|N|G|"
print_center "+-+-+-+-+ +-+-+-+-+ +-+ +-+-+-+-+-+-+-+"
print_center ""
print_center ""
print_center ""

# Tambahkan perintah yang ingin dijalankan setelah banner di tampilkan di sini
# Contoh:
print_center "Mohon Di tunggu Script Otomasi CBT Akan berjalan!" ""

# Menambahkan repository dan update tanpa output
sudo tee /etc/apt/sources.list > /dev/null <<EOL
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-updates main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-security main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-backports main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-proposed main restricted universe
EOL
sudo apt update -y > /dev/null 2>&1
echo "Repository update selesai."

# Install wget, nginx, php, mariadb, dan modul php tanpa output
sudo apt install -y wget > /dev/null 2>&1 && echo "wget berhasil diinstall."
sudo apt install -y zip unzip > /dev/null 2>&1 && echo "zip dan unzip berhasil diinstall."
sudo apt install -y nginx > /dev/null 2>&1 && echo "nginx berhasil diinstall."
sudo apt install -y php7.4-fpm > /dev/null 2>&1 && echo "php7.4-fpm berhasil diinstall."
sudo apt install -y php7.4-common php-zip php-curl php-xml php-xmlrpc php-json php-mysql php-pdo php-gd php-imagick php-ldap php-imap php-mbstring php-intl php-cli php-tidy php-bcmath php-opcache > /dev/null 2>&1 && echo "Modul PHP berhasil diinstall."
sudo apt install -y mariadb-server mariadb-client > /dev/null 2>&1 && echo "MariaDB berhasil diinstall."
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'admin';" > /dev/null 2>&1 && echo "Password MariaDB root berhasil diubah."

# Menjawab pertanyaan konfigurasi phpmyadmin dengan debconf-set-selections
echo "phpmyadmin phpmyadmin/dbconfig-install boolean false" | sudo debconf-set-selections
echo "phpmyadmin phpmyadmin/reconfigure-webserver multiselect none" | sudo debconf-set-selections

# Install phpmyadmin tanpa output
sudo apt install -y phpmyadmin > /dev/null 2>&1 && echo "phpmyadmin berhasil diinstall."

# Link phpmyadmin
ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin > /dev/null 2>&1

# Update php.ini untuk session.auto_start
PHPINI="/etc/php/7.4/fpm/php.ini"
sed -i 's/^\s*session.auto_start\s*=.*/session.auto_start = 1/' "$PHPINI" > /dev/null 2>&1
systemctl restart php7.4-fpm > /dev/null 2>&1
PHPINI="/etc/php/7.4/cli/php.ini"
sed -i 's/^\s*session.auto_start\s*=.*/session.auto_start = 1/' "$PHPINI" > /dev/null 2>&1
systemctl restart php7.4-fpm > /dev/null 2>&1

# Nama direktori yang ingin dicari
DIRNAME="otomasi"
COPY_DESTINATION="/home"
ZIP_FILENAME="candy.zip"
ZIP_SOURCE="/home/otomasi/$ZIP_FILENAME"
ZIP_DESTINATION="/var/www/html"

echo "Mencari direktori dengan perintah: sudo find / -type d -name \"$DIRNAME\""
SEARCH_RESULT=$(sudo find / -type d -name "$DIRNAME" 2>/dev/null)

if [ -z "$SEARCH_RESULT" ]; then
    echo "${RED}Direktori '$DIRNAME' tidak ditemukan atau tidak dapat diakses. Periksa path dan izin.${RESET}"
    exit 1
else
    echo "${GREEN}Direktori ditemukan:${RESET} $SEARCH_RESULT"
    echo "Menyalin direktori secara rekursif ke $COPY_DESTINATION..."
    sudo cp -r "$SEARCH_RESULT" "$COPY_DESTINATION" > /dev/null 2>&1

    # Periksa apakah penyalinan berhasil
    if [ $? -eq 0 ]; then
        echo "${GREEN}Direktori '$DIRNAME' berhasil disalin ke '$COPY_DESTINATION'.${RESET}"
    else
        echo "${RED}Gagal menyalin direktori '$DIRNAME'. Periksa izin atau ruang penyimpanan.${RESET}"
        exit 1
    fi
fi
# Menyalin file zip ke direktori tujuan
if [ -f "$ZIP_SOURCE" ]; then
    echo "Menemukan file '$ZIP_SOURCE'. Menyalin ke '$ZIP_DESTINATION'..."
    if cp "$ZIP_SOURCE" "$ZIP_DESTINATION" > /dev/null 2>&1; then
        echo "File '$ZIP_FILENAME' berhasil disalin ke '$ZIP_DESTINATION'."
    else
        echo "Gagal menyalin file '$ZIP_FILENAME'."
        exit 1
    fi
else
    echo "File '$ZIP_SOURCE' tidak ditemukan."
    exit 1
fi
# Copy dan unzip file zip
if [ -f "$ZIP_SOURCE" ]; then
    echo "Menemukan file '$ZIP_SOURCE'. Menyalin ke '$ZIP_DESTINATION'..."
    cp "$ZIP_SOURCE" "$ZIP_DESTINATION" > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "File '$ZIP_FILENAME' berhasil disalin ke '$ZIP_DESTINATION'."
    else
        echo "Gagal menyalin file '$ZIP_FILENAME'."
        exit 1
    fi
else
    echo "File '$ZIP_SOURCE' tidak ditemukan."
    exit 1
fi

# Unzip file di direktori tujuan
ZIP_FILE="$ZIP_DESTINATION/$ZIP_FILENAME"
echo "Meng-unzip file '$ZIP_FILE' ke '$ZIP_DESTINATION'..."
unzip "$ZIP_FILE" -d "$ZIP_DESTINATION" > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "File '$ZIP_FILE' berhasil di-unzip ke '$ZIP_DESTINATION'."
else
    echo "Gagal meng-unzip file '$ZIP_FILE'."
    exit 1
fi

# Jalankan skrip tambahan dengan chmod +x dan jalankan skrip
sudo chmod +x php.sh && sudo ./php.sh > /dev/null 2>&1 && echo "php.sh berhasil dijalankan."
sudo chmod +x php2.sh && sudo ./php2.sh > /dev/null 2>&1 && echo "php2.sh berhasil dijalankan."
systemctl restart php7.4-fpm > /dev/null 2>&1 && echo "php7.4-fpm berhasil di-restart."
sudo systemctl restart nginx > /dev/null 2>&1 && echo "nginx berhasil di-restart."
sudo chmod +x candy.sh && sudo ./candy.sh > /dev/null 2>&1 && echo "candy.sh berhasil dijalankan."
sudo chmod +x nginx.sh && sudo ./nginx.sh > /dev/null 2>&1 && echo "nginx.sh berhasil dijalankan."

# Berikan izin 777 ke /var/www/html
sudo chmod -R 777 /var/www/html > /dev/null 2>&1 && echo "Izin 777 diberikan ke /var/www/html."
sudo sync; echo 3 > /proc/sys/vm/drop_caches 2>&1 && echo "Cache telah di bersihkan"

# Notifikasi akhir di tengah dan berwarna merah
print_center "Semua aplikasi telah berhasil diinstall." "$RED"


