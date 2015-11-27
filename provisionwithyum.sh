#!/usr/bin/env bash
sudo yum update
#installs version 2.0 of ruby
yum -y groupinstall "Development Tools"
sudo yum -y install ruby-devel

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
