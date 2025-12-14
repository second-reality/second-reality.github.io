#!/usr/bin/env bash

set -euo pipefail

die()
{
  echo "$@" >&2
  exit 1
}

[ $# -ge 1 ] || die "usage: cmd [args]..."

scriptDir=$(dirname $(readlink -f $0))

podman build -t pages - < $scriptDir/pages.Dockerfile

interactive="-it"
tty > /dev/null || interactive=

all_gid=$(id -G | tr ' ' '\n' | sed -e 's/^/--group-add /g' | tr '\n' ' ')
podman run $interactive --rm=true \
  -w $(pwd) \
  -v $(pwd):$(pwd) \
  -v $scriptDir:$scriptDir \
  -v /tmp:/tmp \
  pages "$@"
