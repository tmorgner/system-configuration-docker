#!/bin/bash

FILES=`find . -mindepth 2 -type f -printf '%P\n'`
DIRS=`find . -mindepth 2 -type d -printf '%P\n'`

for dir in $DIRS; do
   mkdir -p "$TARGET/$dir"
   echo "creating $dir"
done

for file in $FILES; do
   echo "copy file $file"
   install -C -m 644 -o root -g root $file "$TARGET/$file"
done

