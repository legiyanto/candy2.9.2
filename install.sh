#!/bin/bash
sudo tee /etc/apt/sources.list > /dev/null <<EOL
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-updates main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-security main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-backports main restricted universe multiverse
deb http://kartolo.sby.datautama.net.id/ubuntu/ focal-proposed main restricted universe
EOL
sudo apt update
sudo apt install -y wget
sudo apt-get install zip unzip
sudo apt install nginx -y
sudo apt install php7.4-fpm -y
sudo apt install php7.4-common php-zip php-curl php-xml php-xmlrpc php-json php-mysql php-pdo php-gd php-imagick php-ldap php-imap php-mbstring php-intl php-cli php-tidy php-bcmath php-opcache -y
sudo apt install mariadb-server mariadb-client -y
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'admin';"
sudo apt install phpmyadmin -y
ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
PHPINI="/etc/php/7.4/fpm/php.ini"
sed -i 's/^\s*session.auto_start\s*=.*/session.auto_start = 1/' "$PHPINI"
systemctl restart php7.4-fpm
PHPINI="/etc/php/7.4/cli/php.ini"
sed -i 's/^\s*session.auto_start\s*=.*/session.auto_start = 1/' "$PHPINI"
systemctl restart php7.4-fpm
# Nama direktori yang ingin dicari
DIRNAME="otomasi"

# Direktori tujuan untuk menyalin direktori "otomasi"
COPY_DESTINATION="/home"

# File zip yang akan di-copy dan di-unzip
ZIP_FILENAME="candy.zip"
ZIP_SOURCE="/home/otomasi/$ZIP_FILENAME"
ZIP_DESTINATION="/var/www/html"

# Langkah 1: Cari direktori dan salin ke direktori tujuan
echo "Mencari direktori '$DIRNAME' dan menyalin secara rekursif ke '$COPY_DESTINATION'..."
find / -type d -name "$DIRNAME" -exec cp -r {} "$COPY_DESTINATION" \;

# Periksa apakah operasi penyalinan direktori berhasil
if [ $? -eq 0 ]; then
    echo "Direktori '$DIRNAME' berhasil ditemukan dan disalin ke '$COPY_DESTINATION'."
else
    echo "Gagal menemukan atau menyalin direktori '$DIRNAME'."
    exit 1
fi

# Langkah 2: Copy file zip ke direktori tujuan
if [ -f "$ZIP_SOURCE" ]; then
    echo "Menemukan file '$ZIP_SOURCE'. Menyalin ke '$ZIP_DESTINATION'..."
    cp "$ZIP_SOURCE" "$ZIP_DESTINATION"

    # Periksa apakah operasi penyalinan file zip berhasil
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

# Langkah 3: Unzip file di direktori tujuan
ZIP_FILE="$ZIP_DESTINATION/$ZIP_FILENAME"
echo "Meng-unzip file '$ZIP_FILE' ke '$ZIP_DESTINATION'..."
unzip "$ZIP_FILE" -d "$ZIP_DESTINATION"

# Periksa apakah operasi unzip berhasil
if [ $? -eq 0 ]; then
    echo "File '$ZIP_FILE' berhasil di-unzip ke '$ZIP_DESTINATION'."
else
    echo "Gagal meng-unzip file '$ZIP_FILE'."
    exit 1
fi
sudo chmod +x php.sh
sudo ./php.sh
sudo chmod +x php2.sh
sudo ./php.sh
systemctl restart php7.4-fpm
sudo systemctl restart nginx
sudo chmod +x candy.sh
sudo ./candy.sh
sudo chmod +x nginx.sh
sudo ./nginx.sh
sudo chmod -R 777 /var/www/html



