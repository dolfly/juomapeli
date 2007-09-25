#!/bin/sh

d=$(date -I)
git-archive --format=tar --prefix=juomapeli."$d".snapshot/ HEAD |gzip > juomapeli."$d".snapshot.tar.gz
