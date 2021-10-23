
build:
	docker build . -t nzagorsky/distcc

push: build
	docker image push nzagorsky/distcc

# 3632 default port
run:
	docker run --name distcc -d -p 3632:3632 -p 3633:3633 --rm nzagorsky/distcc 
