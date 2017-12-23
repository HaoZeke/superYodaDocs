#!/usr/bin/env bash

set -e # halt script on error

# Build the damn thing
cd website
yarn global add docusaurus-init
yarn build
cp ../keybase.txt build/superYodaDocs/keybase.txt
cd ../
