#docker-sharelatex

This builds and configures a docker image with Ubuntu 14.04 and TeX Live 2014

##Build with:
	git clone https://github.com/cfriedline/docker-sharelatex.git
	cd docker-sharelatesx
	docker build -t cfriedline/sharelatex:sharelatex .

##Test with:
	docker run -p 3000:3000 -v ./db:/data/db -v ./user_files:/sharelatex/user_files--name sharelatex cfriedline/sharelatex:sharelatex run_sharelatex.sh

##Run with:
	docker run -d -p 3000:3000 -v ./db:/data/db -v ./user_files:/sharelatex/user_files --name sharelatex cfriedline/sharelatex:sharelatex run_sharelatex.sh

*Note*: if you're running with a boot2docker virtual machine, you need to also
forward the local port tcp/3000 to the guest tcp/3000

Based on the originals from [ShareLaTex](https://github.com/sharelatex/sharelatex) and 
[sharelatex-docker](https://github.com/tiagoboldt/sharelatex-docker)

