#!/bin/bash

if [ $# -eq 0 ]
  then
    today=$(date "+%Y%m%d%n")
else
    today=$1
fi

echo "Fetching archive $today..."

mkdir -p target/$today
cd target/$today

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
# find icons -name '*.svg' -type f -exec sh -c 'cp -i "$@" "$0"' ./glyphs {} +

# See: 
# http://tldp.org/LDP/abs/html/string-manipulation.html
# https://www.cyberciti.biz/faq/bash-for-loop/
# https://stackoverflow.com/questions/3362920/get-just-the-filename-from-a-path-in-a-bash-script

for f in $(find icons -name \*.svg -type f) 
do
     # Target file name is the hash
#    echo $f "./glyphs/"$(md5 -q -s $f).svg
     # Both of these replace the / in the full path with _, but the sort order is fubar
#    echo $f "./glyphs/"$(echo $f | tr / _)
#    echo $f "./glyphs/"${f//[\/]/_}

    # Append the md5 hash to the short file name to preserve sort order
    cp $f "./glyphs/"$(basename ${f%.*})_$(md5 -q -s $f).svg
done

find ../../assets/index -name '*.svg' -type f -exec sh -c 'cp "$@" "$0"' ./glyphs {} +

rm -r icons

fontcustom compile glyphs --name "game-icons-net-$today" --no-hash

# Generate docs
php -f ../../templates/index.php $today > ./game-icons-net-$today/index.html 
php -f ../../templates/index.php $today > ./game-icons-net-$today/index.html 
php -f ../../templates/README.md.php $today > ./game-icons-net-$today/README.md
grip ./game-icons-net-$today/README.md --export ./game-icons-net-$today/README.html

# Build archives
mkdir -p ../../distro
zip -r ../../distro/game-icons-net-font-$today.zip ./game-icons-net-$today
rm ../../distro/game-icons-net-font-latest.zip
cp -r ../../distro/game-icons-net-font-$today.zip ../../distro/game-icons-net-font-latest.zip

echo ""
echo "To complete installation to Adobe Illustrator, copy or link the following font file into"
echo "the Illustrator/Fonts directory and restart Illustrator:"
echo ""
echo "    $(pwd)/game-icons-net-$today/game-icons-net-$today.ttf"
echo ""
