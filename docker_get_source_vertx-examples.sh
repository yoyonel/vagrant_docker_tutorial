#!/usr/bin/env sh

# urls:
# - https://stackoverflow.com/questions/59838/check-if-a-directory-exists-in-a-shell-script
docker run                                                  \
    -t --rm                                                 \
    -v /src/vertx/:/usr/local/src                           \
    vertxdev                                                \
    /bin/bash -c "\
    	if [ ! -d vertx-examples ]; then \
    		git clone https://github.com/vert-x/vertx-examples.git; \
    	else \
    		cd vertx-examples; git pull; \
    	fi"
