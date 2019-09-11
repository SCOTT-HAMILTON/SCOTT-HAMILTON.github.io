#!/bin/bash

find . -name "*.pdf" | awk -F / -f filter_subjects_no_duplicate.awk | ./generate_subject_webpages.py
echo "Done !!"
