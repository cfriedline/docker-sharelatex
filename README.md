#docker-sharelatex

This builds and configures a docker image with Ubuntu 14.04 and TeX Live 2014

##Build with:

Given that TeX Live is huge, it's a better idea to either wget the iso or download it via torrent. For the torrent,
just put in the `docker-sharelatex` directory named `texlive2014.iso`.

	git clone https://github.com/cfriedline/docker-sharelatex.git
	cd docker-sharelatex
	wget http://mirror.unl.edu/ctan/systems/texlive/Images/texlive2014.iso
	docker build -t cfriedline/sharelatex:sharelatex .

##Test with:
	docker run -p 3000:3000 -v /path/to/repo/db:/data/db -v /path/to/repo/user_files:/sharelatex/user_files cfriedline/sharelatex:sharelatex run_sharelatex.sh

##Run with:
	docker run -d -p 3000:3000 -v /path/to/repo/db:/data/db -v /path/to/repo/user_files:/sharelatex/user_files cfriedline/sharelatex:sharelatex run_sharelatex.sh
	
*Note*: if you're running with a boot2docker virtual machine, you need to also
forward the local port tcp/3000 to the guest tcp/3000

Based on the originals from [ShareLaTex](https://github.com/sharelatex/sharelatex) and
[Tiago's](https://github.com/tiagoboldt) 
[sharelatex-docker](https://github.com/tiagoboldt/sharelatex-docker)

