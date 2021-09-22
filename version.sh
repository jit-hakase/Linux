#!/bin/bash
main_version="1.0"
base_hash=$(git rev-list --abbrev-commit --max-parents=0 HEAD)
patch_version=$(git rev-list --abbrev-commit HEAD...${base_hash}|wc -l)
current_branch=$(git rev-parse --abbrev-ref HEAD)
current_hash=$(git rev-parse --short HEAD)
echo "${main_version}.${patch_version}-${current_branch}-${current_hash}"
