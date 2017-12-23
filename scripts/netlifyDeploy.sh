#!/usr/bin/env bash

set -e # halt script on error

# Deploy it
zip -r website.zip website/build/superYodaDocs
curl -H "Content-Type: application/zip" \
     -H "Authorization: Bearer $NETLIFY_TOKEN" \
     --data-binary "@website.zip" \
     https://api.netlify.com/api/v1/sites/$NETLIFY_API_ID/deploys
