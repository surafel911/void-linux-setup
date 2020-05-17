#!/bin/bash

FILE='docker-images.txt'
IMAGES=()

while IFS= read -r LINE; do
	IMAGES+=("$LINE ")
done < $FILE

for IMAGE in "${IMAGES[@]}"; do
	sudo docker pull $IMAGE
done
