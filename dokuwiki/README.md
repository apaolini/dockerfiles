Dokuwiki docker image
=====================

[Dokuwiki](https://www.dokuwiki.org/) running on lighttpd

Running
-------

### Simple ###

    docker run -d -p 8080:80 apaolini/dokuwiki

### Run persisting data and configurations ###
```
docker run \
  -v /data/dokuwiki/conf/:/var/www/dokuwiki/conf/ \
  -v /data/dokuwiki/data/:/var/www/dokuwiki/data/ \
  -v /data/dokuwiki/lib/plugins/:/var/www/dokuwiki/lib/plugins/ \
  -v /data/dokuwiki/lib/tpl/:/var/www/dokuwiki/lib/tpl/ \
  apaolini/dokuwiki
```
`run.sh` is a sample script for running the image mounting the data from the local directory.

Build
-----
    docker build -t apaolini/dokuwiki .

Caveat
------
After the first configuration remember to disable the administration interface. You can simply use the _nuclear_ tactic and remove the `install.php` file, like that:

    docker exec dokuwiki_containername /bin/rm /var/www/dokuwiki/install.php
