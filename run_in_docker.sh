#!/usr/bin/env bash

set -euo pipefail

die()
{
  echo "$@" >&2
  exit 1
}

[ $# -ge 1 ] || die "usage: cmd [args]..."

scriptDir=$(dirname $(readlink -f $0))

docker build -t pages - < $scriptDir/pages.Dockerfile

interactive="-it"
tty > /dev/null || interactive=

all_gid=$(id -G | tr ' ' '\n' | sed -e 's/^/--group-add /g' | tr '\n' ' ')
docker run $interactive --rm=true \
  -w $(pwd) \
  -v $(pwd):$(pwd) \
  -v $scriptDir:$scriptDir \
  -u $UID:$(id -g) \
  $all_gid \
  -v /etc/passwd:/etc/passwd:ro \
  -v /etc/group:/etc/group:ro \
  -v /etc/shadow:/etc/shadow:ro \
  -v /tmp:/tmp \
  pages "$@"
