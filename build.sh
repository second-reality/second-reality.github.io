#!/usr/bin/env bash

set -euo pipefail

script_dir=$(dirname $(readlink -f $0))
out_folder="$script_dir/docs/"
mkdir -p $out_folder

sphinx_opt="-W -n -j auto" # warn, report missing ref, parallel
sphinx-build $sphinx_opt -b html $script_dir/source $out_folder
cp $script_dir/google5eebefa27159374c.html $out_folder/
echo "file://$out_folder/index.html"
