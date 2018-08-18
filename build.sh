#!/bin/bash

today=$(date "+%Y%m%d%n")

echo "Fetching archive $today..."

mkdir -p $today
cd $today

if [ -f "$today.zip" ]
then
	echo "$today.zip found; skipping download."
else
	echo "Downloading archive..."
	curl https://game-icons.net/archives/svg/zip/000000/transparent/game-icons.net.svg.zip > game-icons.net-$today.svg.zip
fi

echo "Unpacking archive..."
unzip -qu game-icons.net-$today.svg.zip

mkdir -p glyphs
find icons -name '*.svg' -type f -exec sh -c 'cp "$@" "$0"' ./glyphs {} +
find ../assets/index -name '*.svg' -type f -exec sh -c 'cp "$@" "$0"' ./glyphs {} +

rm -r icons

fontcustom compile glyphs --name "game-icons-net-$today" --no-hash

echo ""
echo "To complete installation, copy or link the following font file into"
echo "the Illustrator/Fonts directory and restart Illustsrator:"
echo ""
echo "    $(pwd)/game-icons-net-$today/game-icons-net-$today.ttf"
echo ""
