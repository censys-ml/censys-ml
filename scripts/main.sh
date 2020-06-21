#!/usr/bin/env bash
export INPUT="file"
export OUTPUT="file"

VECTOR_DIR="../vector"

#default socket connection addresses
declare -A address
#sources that support TLS
declare -A TLS

address["vector"]=0.0.0.0:9000
address+=(
    ["socket_tcp"]=0.0.0.0:9000
    ["socket_udp"]=0.0.0.0:9000
    ["syslog_tcp"]=0.0.0.0:514
    ["syslog_udp"]=0.0.0.0:514
    ["logplex"]=0.0.0.0:80
    ["splunk_hec"]=0.0.0.0:80
    ["http"]=0.0.0.0:80
)

TLS["vector"]=true
TLS+=(
    ["socket_tcp"]=true
    ["splunk_hec"]=true
    ["syslog_tcp"]=true
    ["logplex"]=true
    ["http"]=true
)

#echos description and default value and recieves input
function assign_value () {
    #$1 is description and $2 is default value
    if [ -n "$2" ]; then
        printf "$1 ($2): "
    else
        printf "$1: "
    fi
    read -r var
    func_result="${var:-$2}"
}


echo "Using the following as vector directory: $VECTOR_DIR"
printf "Source Type (stdin): "
read -r SOURCE_TYPE
SOURCE_TYPE="${SOURCE_TYPE:-stdin}"


#Handle enviroment variables if source type is file
if [ $SOURCE_TYPE == file ]; then
    assign_value 'Include Pattern' '*.json'
    export INCLUDE=$func_result
    export DATA_DIR=$VECTOR_DIR"/data"
    export IN_FILE=$VECTOR_DIR"/input/"
    export IN_FILE=$IN_FILE$INCLUDE
fi

#handles Env variables for Docker data source
if [ $SOURCE_TYPE == docker ]; then
    assign_value 'Include Container' ''
    export CONTAINER=$func_result
    assign_value 'Include Image' ''
    export IMAGE=$func_result
fi

# Assesses what type of connection is intended if source type is socket
if [ $SOURCE_TYPE == socket ] || [ $SOURCE_TYPE == syslog ]; then
    assign_value 'Socket Connection Mode' 'tcp'
    MODE=$func_result
    if [ $MODE == unix ]; then
        assign_value 'Absolute path to conn:' './'
    fi
    SOURCE_TYPE=socket_$MODE
fi

# Recieves address for connections that require socket connection
if ! [ -z ${address[$SOURCE_TYPE]} ]; then
    assign_value 'Address' ${address[$SOURCE_TYPE]}
    export ADDRESS=$func_result
fi

#Recieves Token for a splunk_hec source
if [ $SOURCE_TYPE == splunk_hec ]; then
    assign_value 'Token' ''
    export TOKEN=$func_result
fi

# Handle if connection needs TLS (for tcp mode in scoket, http and vector)
if [ ${TLS[$SOURCE_TYPE]} = true ]; then
    printf "Enable TLS (false): "
    read -r TLS
    TLS="${TLS:-false}"
    
    if [ $TLS == true ]; then
        printf "path to CA File (./): "
        read -r CA_PATH
        
        printf "path to Cert File (./): "
        read -r CERT_PATH
        
        printf "Pass phrase to unlock: "
        read -sr KEY_PASS
        
        printf "\npath to a certificate key file (./): "
        read -r KEY_PATH
    fi
    export TLS
    export CA_PATH="${CA_PATH:-./}"
    export KEY_PASS=''
    export CERT_PATH="${CERT_PATH:-./}"
    export KEY_PATH="${KEY_PATH:-./}"
fi

export SOURCE_TYPE

#temporarily the output sink is a file...will be resolved after feedback
export OUT_FILE=$VECTOR_DIR"/output/vector-%Y-%m-%d.json"

# debug
vector --config $VECTOR_DIR/vector.toml $VECTOR_DIR/source_configs/$SOURCE_TYPE".toml" --verbose --threads 4

# prod
#vector --config src/vector/vector.toml --quiet --require-healthy --threads 4