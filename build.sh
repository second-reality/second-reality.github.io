#!/bin/bash

# themes
#https://github.com/onlyhavecans/pelican-chunk
#f9206df831d497688516cf86dd089004be1ee06a
# build using pelican 3.7.1
cd `readlink -f $0 | xargs dirname`
outfolder=output
rm -rf $outfolder
echo "generate $outfolder files"
pelican -s pelican/settings.py -o $outfolder -t pelican/chunk/ content/ || { echo FAILURE; exit 1; }
echo "copy static_content to output/content"
rsync -a static_content/ output/content/
echo "add $outfolder content to git"
git add $outfolder
echo "access website with `readlink -f output/index.html`"
