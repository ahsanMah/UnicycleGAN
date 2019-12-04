#!/bin/bash

docker run \
	-it \
	--rm \
	--name devgan \
	-p 8888:8888 \
	--expose 9013 \
	-p 9013:9013 \
	--gpus all \
	--entrypoint="" \
	--mount type=bind,src="$(pwd)/",target=/tf \
	tf:gpu-v2 \
	bash -c 'source /etc/bash.bashrc && 
	jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root'
