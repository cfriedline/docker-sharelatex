from ubuntu:14.04

run apt-get update

run apt-get dist-upgrade -y --force-yes

run apt-get install -y --force-yes npm wget git vim mongodb-server redis-server

run ln -s /usr/bin/nodejs /usr/bin/node

add texlive2014.iso /texlive2014.iso

run git clone https://github.com/scottkosty/install-tl-ubuntu.git; \
    cd install-tl-ubuntu; \
    chmod +x install-tl-ubuntu; \
    ./install-tl-ubuntu -i /texlive2014.iso; \
    rm /texlive2014.iso
    
run git clone https://github.com/sharelatex/sharelatex.git; \
    cd sharelatex; \
    npm install; \
    npm install -g grunt-cli; \
    grunt install

add run_sharelatex.sh /usr/bin/run_sharelatex.sh

expose 3000