#! /bin/bash

DOCKER_IMAGE="brd"

# Make sure the image exists
docker images | grep $DOCKER_IMAGE > /dev/null
if [ $? -ne 0 ] ; then
	echo "Missing docker image: $DOCKER_IMAGE"
	exit 1
fi

docker run --rm  -v `pwd`:/home/user/build brd TERM=screen; make -C buildroot BR2_EXTERNAL=.. menuconfig
