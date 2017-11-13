yum update

yum upgrade

yum install gcc gcc-c++ php-xml php php-mysql php-pear php-mbstring mariadb-devel mariadb-server mariadb sqlite-devel lynx bison gmime-devel psmisc tftp-server httpd make ncurses-devel libtermcap-devel sendmail sendmail-cf caching-nameserver sox newt-devel libxml2-devel libtiff-devel audiofile-devel gtk2-devel uuid-devel libtool libuuid-devel subversion kernel-devel kernel-devel-$(uname -r) git subversion kernel-devel php-process crontabs cronie cronie-anacron wget vim


wget http://www.digip.org/jansson/releases/jansson-2.7.tar.gz

tar -zxvf jansson-2.7.tar.gz

wget http://downloads.asterisk.org/pub/telephony/certified-asterisk/asterisk-certified-13.13-current.tar.gz

tar -zxvf asterisk-certified-13.13-current.tar.gz

cd asterisk-certified-13.13-cert6

./configure --libdir=/usr/lib64

#COMMENTED CODE  RUN AFTER THIS FILE IS RUN IN THIS ORDER

#mysql_secure_installation

#make menuselect

#contrib/scripts/get_mp3_source.sh

#make install

#make samples

#make config

#mysql -u root -p
### This code that´s below it turns the asterisk service on even after boot
#make config
# chkconfig asterisk on

useradd -m asterisk

chown asterisk.asterisk /var/run/asterisk

chown -R asterisk.asterisk /etc/asterisk

chown -R asterisk.asterisk /var/{lib,log,spool}/asterisk

chown -R asterisk.asterisk /usr/lib64/asterisk

systemctl restart asterisk

systemctl status asterisk

systemctl start firewalld

systemctl enable firewalld

firewall-cmd --zone=public --add-port=5060/udp --permanent

firewall-cmd --zone=public --add-port=5060/tcp --permanent

firewall-cmd --zone=public --add-port=5061/udp --permanent

firewall-cmd --zone=public --add-port=5061/tcp --permanent

firewall-cmd --zone=public --add-port=4569/udp --permanent

firewall-cmd --zone=public --add-port=5038/tcp --permanent

firewall-cmd --zone=public --add-port=10000-20000/udp --permanent

firewall-cmd --reload


