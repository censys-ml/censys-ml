#!/usr/bin/env bash
export INPUT="file"
export OUTPUT="file"

VECTOR_DIR="/Users/dagmawi/Desktop/censys-ml/vector"
export DATA_DIR=$VECTOR_DIR"/data"
export IN_FILE=$VECTOR_DIR"/input/*.json"
export OUT_FILE=$VECTOR_DIR"/output/vector-%Y-%m-%d.json"

# debug
vector --config vector/vector.toml --verbose --threads 4

# prod
# vector --config src/vector/vector.toml --quiet --require-healthy --threads 4