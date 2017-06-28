#!/usr/bin/env sh

docker run \
	-d \
	-v /src/vertx/:/usr/local/src \
	-p 8081:8080 \
	vertxdev \
	vertx run vertx-examples/src/raw/java/httphelloworld/HelloWorldServer.java
