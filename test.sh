#!/bin/bash

git fetch --tags

tags=$(git for-each-ref --sort=-committerdate --format '%(refname) %(creatordate)' refs/tags/prod.* | head -n 2 | awk '{print $1}')

echo "$tags"