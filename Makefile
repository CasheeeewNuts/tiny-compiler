CUR_DIR := $(shell pwd)

build:
	@docker build ./ -t compiler

boot:
	@docker run --mount type=bind,src=$(CUR_DIR)/src,dst=/home/user/src --name compiler -it compiler