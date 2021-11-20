#!/bin/bash
current_dir="$(dirname $(readlink -f $0))"
pushd `pwd`

bash $current_dir/../tools/scripts/install-packages.sh
bash $current_dir/../tools/scripts/install-files.sh
[ -f $name ] && bash $current_dir/install-tools.sh

popd
