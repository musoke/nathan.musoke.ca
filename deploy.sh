#!/bin/env bash

# Causes ther script to exit if any commands return an error.
# This will catch false positives in some case, but shouldn't in this case.
set -e

# Build the website
jekyll build

# Upload to AWS S3 bucket.
aws s3 sync ./_site/ s3://nathan.musoke.ca/ --delete --cache-control="max-age=86400" --exclude "*.html"
aws s3 sync ./_site/ s3://nathan.musoke.ca/ --delete --cache-control="max-age=0, no-cache" --exclude "*" --include "*.html"
