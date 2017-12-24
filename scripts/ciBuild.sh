#!/usr/bin/env bash

set -e # halt script on error

# Build the damn thing
cd website
yarn
yarn build
