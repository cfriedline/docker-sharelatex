from ubuntu:14.04

maintainer "Chris Friedline (cfriedline@vcu.edu)"

run apt-get update; \
    apt-get dist-upgrade -y --force-yes; \
    apt-get install -y --force-yes wget git vim mongodb-server redis-server build-essential \
    software-properties-common python-software-properties; \
    add-apt-repository -y ppa:chris-lea/node.js; \
    apt-get update; \
    apt-get install -y --force-yes nodejs
    
#run ln -s /usr/bin/nodejs /usr/bin/node

run wget http://www.gnu.org/software/xorriso/xorriso-1.3.8.tar.gz;\
    tar zxvf /xorriso-1.3.8.tar.gz; \
    cd xorriso-1.3.8; \
    ./configure && make && make install

copy texlive2014.iso /
copy texlive.profile /

run osirrox -indev /texlive2014.iso -extract / /texlive2014; \
    rm -f /texlive2014.iso; \
    cd /texlive2014; \
    ./install-tl --profile=/texlive.profile; \
    export PATH=export PATH=/usr/local/texlive/2014/bin/x86_64-linux:$PATH; \
    rm -rf /texlive2014

run git clone https://github.com/sharelatex/sharelatex.git; \
    cd sharelatex; \
    npm install; \
    npm install -g grunt-cli; \
    grunt install

copy app.coffee /sharelatex/clsi/app.coffee

run cd /sharelatex; \
    rm -rf web/node_modules/bcrypt; \
    grunt install

add run_sharelatex.sh /usr/bin/run_sharelatex.sh

run chmod +x /usr/bin/run_sharelatex.sh

expose 3000