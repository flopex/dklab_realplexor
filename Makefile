.PHONY: all env dev

all: dev

env:
	virtualenv env
	env/bin/pip install docker-compose

dev: env
	env/bin/docker-compose kill
	env/bin/docker-compose -p dklab_realplexor build dev
	env/bin/docker-compose up dev
