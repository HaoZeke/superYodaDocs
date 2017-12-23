#!/usr/bin/env bash

set -e # halt script on error

# Global
yarn global add docusaurus-init

# Build the damn thing
cd website
yarn
yarn build
cp ../keybase.txt build/superYodaDocs/keybase.txt
cd ../
