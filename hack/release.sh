#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

ROOT=$(unset CDPATH && cd $(dirname "${BASH_SOURCE[0]}")/.. && pwd)
cd $ROOT

v=$(git describe --tags --exclude 'v*+*')
v=$(echo $v | sed 's/-/+/')
v=$(echo $v | sed 's/-g/./')

git tag -m "$v" $v
git push -u origin $v
