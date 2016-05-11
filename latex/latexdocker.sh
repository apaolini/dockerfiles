#!/bin/sh

# LaTeX in a docker container
exec docker run --rm -ti --user="$(id -u):$(id -g)" -v `pwd`:/data apaolini/latex "$@"
