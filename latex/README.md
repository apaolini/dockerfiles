LaTeX docker image
==================

Basic [TeX Live](https://www.tug.org/texlive/) installation with support of western European languages:
* English
* Italian
* French
* German
* Portuguese
* Spanish

Run
---

    docker run --rm -ti --user="$(id -u):$(id -g)" -v $(pwd):/data apaolini/latex <COMMAND>

replacing `<COMMAND>` with the command you'll use with a traditional installation. Example:

    docker run --rm -ti --user="$(id -u):$(id -g)" -v $(pwd):/data apaolini/latex pdflatex mydocument.tex

`latexdocker.sh` in the github repo is a sample wrapper for running the image with all the parameters.

Build
-----
    docker build -t apaolini/dokuwiki .
