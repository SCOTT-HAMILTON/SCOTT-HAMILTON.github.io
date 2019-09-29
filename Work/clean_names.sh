#!/bin/bash

find $(pwd) -name "*"| awk '{print $0" "$0}' | awk '{str=$2;gsub(/é/,"e",str);print $1" "str}' | xargs -r -L1 "mv"  >/dev/null 2>&1
find . -name "*.md*.pdf" | awk '{printf("%s ",$0);str = $0;sub(/\.md/, "", str);print str}' | xargs -r -L1 mv
find . -name "*.md*.yaml" | awk '{printf("%s ",$0);str = $0;sub(/\.md/, "", str);print str}' | xargs -r -L1 mv
