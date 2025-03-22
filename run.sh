#!/bin/bash

# Determine script it's self directory
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

runs_dir=`find $script_dir/runs -mindepth 1 -maxdepth 1 -executable`

for script in $runs_dir; do
    echo "running script: $script"
    $script
done
