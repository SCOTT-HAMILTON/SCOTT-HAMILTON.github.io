#!/bin/bash

echo "Generating dark pdfs..."
find . -iname "*-dark*.pdf" | xargs rm
find "$(pwd)" -name "*.pdf" | awk '{print $0" "substr($0,0,length($0)-4)"-dark.pdf"}' | xargs -r -P4 -L1 ./invert_pdf_colors.pl
