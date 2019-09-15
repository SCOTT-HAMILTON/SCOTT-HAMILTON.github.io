#!/bin/bash

find . -name "*.pdf" -exec cp {} /tmp/pdfs \; && cdir=$PWD && cd /tmp && zip -r all_pdfs.zip pdfs && cd $cdir && mv /tmp/all_pdfs.zip .
