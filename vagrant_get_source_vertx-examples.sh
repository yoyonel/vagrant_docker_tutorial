#!/usr/bin/env sh

vagrant \
	docker-run vertxdev \
	-- /bin/bash -c \
		"if [ ! -d vertx-examples ]; then \
    		git clone https://github.com/vert-x/vertx-examples.git; \
    	else \
    		cd vertx-examples; git pull; \
    	fi"
	# -- git clone https://github.com/vert-x/vertx-examples.git