cd /vagrant/php-src
./buildconf
sudo apt-get install autoconf bison libxml2-dev apache2-dev systemtap-sdt-dev openssl pkg-config libssl-dev libcurl4-openssl-dev libbz2-dev libgdbm-dev libjpeg62 libjpeg62-dev libpng12-0 libpng12-dev libfreetype6-dev libicu-dev libiodbc2-dev libxslt1-dev autoconf -y
./configure --with-apxs2=/usr/bin/apxs --enable-mbstring --enable-zip --enable-pcntl --enable-mysqlnd --with-openssl --with-pdo-mysql && make && make install
make
make install
sudo a2dismod php5
sudo cp /etc/apache2/mods-available/php5.conf /etc/apache2/mods-enabled/php7.conf
sudo service apache2 restart
which php
sudo rm -rf /usr/bin/php && sudo ln -s /usr/local/php7/7.0.0/bin/php /usr/bin/php
php -v