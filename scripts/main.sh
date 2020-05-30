#!/usr/bin/env bash
export INPUT="file"
export OUTPUT="file"

CWD=$(pwd)
VECTOR_DIR="${CWD}/vector"
echo "Using the following as vector directory: $VECTOR_DIR"
export DATA_DIR=$VECTOR_DIR"/data"
export IN_FILE=$VECTOR_DIR"/input/*.json"
export OUT_FILE=$VECTOR_DIR"/output/vector-%Y-%m-%d.json"

# debug
vector --config $VECTOR_DIR/vector.toml --verbose --threads 4

# prod
#vector --config src/vector/vector.toml --quiet --require-healthy --threads 4