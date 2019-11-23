#!/usr/bin/env bash

export INPUT="stdin"
export OUTPUT="file"

# debug
vector --config vector/vector.toml --verbose --threads 4

# prod
# vector --config src/vector/vector.toml --quiet --require-healthy --threads 4