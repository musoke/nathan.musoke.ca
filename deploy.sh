#!/bin/env bash

# Causes ther script to exit if any commands return an error.
# This will catch false positives in some case, but shouldn't in this case.
set -e

# Build the website
jekyll build

# Upload to AWS S3 bucket.
aws s3 cp --recursive ./_site/ s3://nathan.musoke.ca/
