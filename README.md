/home/ann/app27/readme.md
=========================

This repo is focused on teaching ReactJS.

To clone this repo, run this shell command:

git clone https://github.com/danbikle/app27.git

The Node.js app in this repo is educational content for a Meetup:

http://www.meetup.com/Dans-Linux-JavaScript-Class


I ran this Node.js app on Ubuntu 14 on my Laptop.


So,
I started by installing Ubuntu 14 on my Laptop.

VirtualBox is well suited for Laptop Ubuntu:

http://releases.ubuntu.com/14.04/ubuntu-14.04.3-desktop-amd64.iso

https://www.virtualbox.org/wiki/Downloads

http://www.google.com/search?q=How+to+install+virtualbox    

http://www.google.com/search?q=How+to+install+virtualbox+additions

http://www.syntax.us/posts/virtualbox_why_tiny

After I installed Ubuntu I enhanced it:
```
apt-get update
apt-get upgrade

apt-get install autoconf bison build-essential libssl-dev libyaml-dev \
libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3       \
libgdbm-dev libsqlite3-dev gitk postgresql postgresql-server-dev-all  \
libpq-dev emacs wget curl chromium-browser openssh-server aptitude    \
ruby ruby-dev sqlite3

apt-get update
apt-get upgrade
```
I created ann account:
```
useradd ann -m -s /bin/bash
passwd ann
ssh -YA ann@localhost
```
I installed Node.js:
```
cd ~ann
wget https://nodejs.org/dist/v5.0.0/node-v5.0.0-linux-x64.tar.gz
tar zxf node-v5.0.0-linux-x64.tar.gz
rm -rf node
mv node-v5.0.0-linux-x64 node

export       PATH="/home/ann/node/bin:${PATH}"
echo 'export PATH="/home/ann/node/bin:${PATH}"' >> ~ann/.bashrc

which npm
npm install -g coffee-script
ls -la /home/ann/node/lib/node_modules/
which coffee
coffee -e 'console.log "hello coffee!"'
```
I installed app27:
```
cd ~ann
echo 'gem: --no-ri --no-rdoc' >> ~ann/.gemrc
rm -rf app27
git clone https://github.com/danbikle/app27.git
cd ~ann/app27
.  ~ann/app27/app27env.bash
mkdir -p $GEM_HOME
/usr/bin/gem install bundler
$GEM_HOME/bin/bundle install
npm install
~ann/app27/http.bash
```

In another shell I ran this:
```
/usr/bin/curl localhost:8080/demo10.html|head
```
That command should show me some HTML syntax.

After I installed app27 on my laptop, I deployed it to heroku.

First I used a browser to create an account at www.heroku.com  which cost $0.00

I continued by following these shell commands:

```
cd ~ann
rm -f  heroku-client
rm -rf heroku-client.tgz
wget https://s3.amazonaws.com/assets.heroku.com/heroku-client/heroku-client.tgz
tar zxf heroku-client.tgz
echo 'export PATH=/home/ann/heroku-client/bin:${PATH}' >> ~ann/.bashrc
echo  export PATH=/home/ann/heroku-client/bin:${PATH}
```
I created ssh-key for ann account (assuming ann has none yet).

I used heroku-client to "login" my shell.

I gave a copy of ann public ssh-key to heroku:
```
~ann/heroku-client/bin/heroku status
~ann/heroku-client/bin/heroku auth:login
~ann/heroku-client/bin/heroku auth:whoami
~ann/heroku-client/bin/heroku keys:add
``` 


