build:
	docker build -t linbox-dev:latest docker

run:
	docker run -it -v `pwd`/opt:/root/opt -v `pwd`/code:/root/code -v ~/.ssh:/root/.ssh linbox-dev:latest
