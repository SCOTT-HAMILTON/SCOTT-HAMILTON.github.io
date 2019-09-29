#!/bin/bash

find . -name "*.md*.pdf" | awk '{printf("%s ",$0);str = $0;sub(/\.md/, "", str);print str}' | xargs -r -L1 mv
find . -name "*.md*.yaml" | awk '{printf("%s ",$0);str = $0;sub(/\.md/, "", str);print str}' | xargs -r -L1 mv
