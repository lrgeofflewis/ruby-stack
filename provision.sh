#!/usr/bin/env bash
sudo yum update

echo "setup RVM"
yum -y install tar which
yum -y install patch libyaml-devel libffi-devel glibc-headers autoconf gcc-c++ glibc-devel readline-devel zlib-devel openssl-devel bzip2 automake libtool bison
gpg2 --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
curl -L get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
echo "installs ruby with RVM"
rvm install 2.1.4
rvm use 2.1.4 --default

gem install bundler

sudo yum install -y git
echo "phantomjs"
sudo yum -y install fontconfig freetype freetype-devel fontconfig-devel libstdc++
cd ~
export PHANTOM_JS="phantomjs-1.9.8-linux-x86_64"
wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2
mv $PHANTOM_JS.tar.bz2 /usr/local/share/
cd /usr/local/share/
tar xvjf $PHANTOM_JS.tar.bz2
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/share/phantomjs
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin/phantomjs
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/bin/phantomjs
