#!/bin/bash
# Publishes this pack to the dot-cloud CDN.
#   tools/publish.sh VERSION [extra publish_pack.sh flags, e.g. --token-file F --dry-run]
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
V=${1:?usage: tools/publish.sh VERSION [flags]}; shift
exec "$HERE/../dot-cloud/tools/publish_pack.sh" publish --source "$HERE" --id zz-ply-class-pack --version "$V" \
    --exclude-dir ci --exclude-dir tools --exclude-dir docs --exclude-dir assets \
    --lock "$HERE/content.lock.json" "$@"
