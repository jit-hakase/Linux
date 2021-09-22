#!/bin/bash
major_version=1
minor_version=0
base_hash=$(git rev-list --abbrev-commit --max-parents=0 HEAD)
patch_version=$(git rev-list --abbrev-commit HEAD...${base_hash}|wc -l)
current_branch=$(git rev-parse --abbrev-ref HEAD)
current_hash=$(git rev-parse --short HEAD)
echo ${major_version}.${minor_version}.${patch_version}-${current_branch}-${current_hash}
