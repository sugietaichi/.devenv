#!/bin/sh

random_number=$RANDOM
docker build -t $random_number .
docker run -it $random_number bin/bash
