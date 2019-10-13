#!/bin/bash

rm -rf /tmp/pdfs
mkdir /tmp/pdfs
find . -name "*.pdf" | awk -F / -f filter_subjects_no_duplicate.awk | awk '{print "/tmp/pdfs/"$0}' | xargs -r -L1 mkdir
find . -name "*.pdf" | awk -F'/' '{print $0" /tmp/pdfs/"$2}' | xargs -r -L1 cp
find . -regextype sed -regex ".*\/images.*[\.jpg|\.jpeg]" | awk -F'/' '{print $0" /tmp/pdfs/"$2}' | xargs -r -L1 cp 

cdir=$PWD
cd /tmp
zip -r all_pdfs.zip pdfs
cd $cdir
mv /tmp/all_pdfs.zip .

rm -rf /tmp/pdfs

