#!/bin/bash

FONTS=/mnt/c/Windows/Fonts

function die {
  echo "$1"
  exit 1
}

tmp=$(mktemp -d)
if [ ! -e $tmp ]; then
  die "failed to create tempdir"
fi

cp $FONTS/consola* $tmp

for font in $tmp/consola*; do
  echo "patching $font"
  nerd-fonts/font-patcher -sc --outputdir . "$font"
done

echo "patched all fonts"
