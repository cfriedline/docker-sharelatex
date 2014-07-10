#docker-sharelatex

##Build with:
	git clone https://github.com/cfriedline/docker-sharelatex.git
	cd docker-sharelatesx
	docker build -t cfriedline/sharelatex:sharelatex .

##Test with:
	docker run -p 3000:3000 -v ./db:data/db --name sharelatex cfriedline/sharelatex:sharelatex run_sharelatex.sh

##Run with:
	docker run -d -p 3000:3000 -v ./db:data/db --name sharelatex cfriedline/sharelatex:sharelatex run_sharelatex.sh

*Note*: if you're running with a boot2docker virtual machine, you need to forward the local port tcp/3000 to the guest tcp/3000

based on the original from [sharelatex-docker](https://github.com/tiagoboldt/sharelatex-docker)
