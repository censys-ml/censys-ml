#!/usr/bin/env bash

# general configs
export INPUT="file"
export OUTPUT="console"
export VECTOR_DIR="/Users/dagmawi/Desktop/Ongoing/censys-ml/censys-ml/vector"
echo "[x] Vector directory set as: ${VECTOR_DIR}"

# file source/sink specific configs
export DATA_DIR="${VECTOR_DIR}/data"
export IN_FILE="${VECTOR_DIR}/input/*.json"
export OUT_FILE="${VECTOR_DIR}/output/vector-%Y-%m-%d.json"

# set the source and sink toml files
export INPUT_CONFIG_PATH=${VECTOR_DIR}"/source_configs/"${INPUT}".toml"
export OUTPUT_CONFIG_PATH=${VECTOR_DIR}"/sink_configs/"${OUTPUT}".toml"

# debug
vector --config ${INPUT_CONFIG_PATH} ${VECTOR_DIR}/vector.toml ${OUTPUT_CONFIG_PATH} --verbose --threads 4

# prod
#vector --config ${INPUT_CONFIG_PATH} ${VECTOR_DIR}/vector.toml ${OUTPUT_CONFIG_PATH} --quiet --require-healthy --threads 4
