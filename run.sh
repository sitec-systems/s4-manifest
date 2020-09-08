#!/bin/sh

docker run --rm -ti -v $(pwd):/home/build -v ~/Work/download:/home/build/download sitec/oe /bin/bash
