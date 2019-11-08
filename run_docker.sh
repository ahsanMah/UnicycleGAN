#!/bin/bash

docker run \
	-it \
	--rm \
	--name devgan \
	-p 8888:8888 \
	--gpus all \
	--mount type=bind,src="$(pwd)/",target=/tf \
	tf:gpu-v1
