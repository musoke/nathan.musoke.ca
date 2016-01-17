#!/bin/env bash

# Retrieve Nathan's list of publications from INSPIRE

# Exit on error
set -e

# Do the retrieval.
curl 'https://inspirehep.net/search?p=f+a+nathan+musoke&of=hcv&em=B&sf=year&so=d&rg=250' -o ./_includes/pubs.html

