#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
rm -rf out
mkdir out
find dandelion -name "*.proto" -type f -print0 | xargs -0r protoc -I. -o out/file_descriptor_set.pb --include_source_info
