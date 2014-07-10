from ubuntu:14.04
run apt-get update
run apt-get dist-upgrade -y --force-yes
run apt-get install -y --force-yes wget git vim mongodb-server redis-server
run git clone https://github.com/scottkosty/install-tl-ubuntu.git; \
    cd install-tl-ubuntu; \
    chmod +x install-tl-ubuntu; \
    ./install-tl-ubuntu
    
RUN git clone https://github.com/sharelatex/sharelatex.git; \
    cd sharelatex; \
    npm install; \
    npm install -g grunt-cli; \
    grunt install