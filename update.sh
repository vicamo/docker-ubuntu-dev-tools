#!/bin/bash
set -eo pipefail

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")"

suites=( "$@" )
if [ ${#suites[@]} -eq 0 ]; then
    suites=( */ )
fi
suites=( "${suites[@]%/}" )

for suite in "${suites[@]}"; do
    sed -e "s,@SUITE@,${suite},g" Dockerfile.template > $suite/Dockerfile
done
