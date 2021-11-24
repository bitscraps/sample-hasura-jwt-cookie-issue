#!/bin/sh

# Docker entrypoint

set -e

bundle check || bundle install --jobs=4 --retry=1;

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
