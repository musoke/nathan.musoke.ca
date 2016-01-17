#!/bin/sh

# Build the website
jekyll build

# Upload to AWS S3 bucket.
aws s3 cp --recursive ./_site/ s3://nathan.musoke.ca/_site/
