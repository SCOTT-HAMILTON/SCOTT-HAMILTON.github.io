#!/bin/bash

find . -name "*.pdf" | awk -F / -v line=0,in=0 -f filter_subjects_no_duplicate.awk | ./generate_subject_webpages.py
echo "Done !!"
