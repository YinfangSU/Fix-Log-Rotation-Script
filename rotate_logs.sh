#!/usr/bin/env bash
set -euo pipefail

# Check if the correct number of arguments is provided
if [[ $# -ne 2]]; then
  # Print usage message to stderr 
  echo "Usage: $0 <archive_dir> <log_dir>" >$2
  exit 1
fi

archive_dir= "$1"
log_dir= "$2"

for f in "$log_dir"/*.log; do
  age=$(find $f -mtime +7)if [ $age ]; thenmv $f $archive_dir/
    count=$count+1fidoneecho "Archived $count files"
