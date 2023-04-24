#!/bin/zsh

if [ -z "$1" ]; then
  echo "Error: no folder path specified."
  exit 1
fi

if [ -z "$2" ]; then
  echo "Error: no file name specified."
  exit 1
fi

find "$1" -type d -name 'node_modules' -prune -o -type f -iname "*$2*" -print
