#!/usr/bin/env bash

export INPUT="stdin"
export OUTPUT="console"

# debug
vector --config src/vector/vector.toml --verbose --threads 4

# prod
# vector --config src/vector/vector.toml --quiet --require-healthy --threads 4