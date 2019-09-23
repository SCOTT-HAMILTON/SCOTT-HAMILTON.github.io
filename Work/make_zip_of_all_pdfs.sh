#!/bin/bash

rm -rf /tmp/pdfs
mkdir /tmp/pdfs
find . -name "*.pdf" -exec cp {} /tmp/pdfs \;
find . -regextype sed -regex ".*\/images.*[\.jpg|\.jpeg]" -exec cp {} /tmp/pdfs \;

cdir=$PWD
cd /tmp
zip -r all_pdfs.zip pdfs
cd $cdir
mv /tmp/all_pdfs.zip .
