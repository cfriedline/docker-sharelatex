from ubuntu:14.04

maintainer "Chris Friedline (cfriedline@vcu.edu)"

run apt-get update

run apt-get dist-upgrade -y --force-yes

run apt-get install -y --force-yes npm wget git vim mongodb-server redis-server

run ln -s /usr/bin/nodejs /usr/bin/node

run wget http://www.gnu.org/software/xorriso/xorriso-1.3.8.tar.gz;\
    tar zxvf /xorriso-1.3.8.tar.gz; \
    cd xorriso-1.3.8; \
    ./configure && make && make install

copy texlive2014.iso /
copy texlive.profile /

run osirrox -indev /texlive2014.iso -extract / /texlive2014

run cd /texlive2014; \
    ./install-tl --profile=/texlive.profile
    
run git clone https://github.com/sharelatex/sharelatex.git; \
    cd sharelatex; \
    npm install; \
    npm install -g grunt-cli; \
    grunt install

copy app.coffee /sharelatex/clsi

run cd /sharelatex; \
    grunt install

add run_sharelatex.sh /usr/bin/run_sharelatex.sh

chmod +x /usr/bin/run_sharelatex.sh

run rm -rf /texlive2014*

expose 3000