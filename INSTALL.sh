mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
brew install homebrew/apache/httpd24
brew install homebrew/php/php70
brew install phpmyadmin



cp /_files/Vhost-conf.cc /usr/local/etc/apache2/2.4/extra/httpd-vhosts.conf
cp /_files/host-conf.cc /usr/local/etc/apache2/2.4/httpd.conf

mkdir /usr/local/etc/Sites
mkdir /usr/local/etc/Sites/logs

brew install mysql

brew services start mysql
brew services start httpd24
brew services start php70
#mv /APACHE3/Vhost-conf.cc /usr/local/etc/apache2/2.4/extra/httpd-vhosts.conf
#mv /APACHE3/host-conf.cc /usr/local/etc/apache2/2.4/httpd.conf

exit
