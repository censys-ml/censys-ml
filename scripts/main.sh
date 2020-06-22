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

    ["docker"]=false
    ["file"]=false
    ["socket_udp"]=false
    ["journald"]=false
    ["socket_unix"]=false
    ["stdin"]=false
    ["syslog_udp"]=false
    ["syslog_unix"]=false
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

#echos description and default value and recieves input and makes them usable for array
#  like values in vector configurations
function assign_multi_value () {
    #$1 is description and $2 is default value for a single item $3 is default item for the array as a whole
    assign_value $1 $2
    if [ -n "$func_result" ]; then
        var=\"$func_result\"
        func_result=${var//,/\",\"}
    fi
    func_result="${func_result:-$3}"
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
    assign_multi_value 'Include Container' ''
    export CONTAINERS=$func_result
    assign_multi_value 'Include Image' ''
    export IMAGES=$func_result
fi



#handles Env variables for Kafka data source
if [ $SOURCE_TYPE == kafka ]; then
    assign_value 'Bootstrap Servers' ''
    export BOOTSTRAP_SERVERS=$func_result
    assign_value 'Group ID for consumer Group' ''
    export GROUP_ID=$func_result
    assign_value 'Field name to assign for Kafka Message' 'message_key'
    export KEY_FIELD=$func_result
    assign_multi_value 'Topics' ''
    export TOPICS=$func_result
fi


#handles Env variables for Journald data source
if [ $SOURCE_TYPE == journald ]; then
    assign_value 'Batch size' '16'
    export BATCH_SIZE=$func_result
    assign_value 'Current_boot_only' 'true'
    export CURRENT_BOOT_ONLY=$func_result
    assign_value 'Journalctl path' 'journalctl'
    export JOURNALCTL_PATH=$func_result
    assign_multi_value "Units" '' ''
    echo $func_result
    export UNITS=$func_result
    export DATA_DIR=$VECTOR_DIR"/data"
fi

# Assesses what type of connection is intended if source type is socket or syslog
if [ $SOURCE_TYPE == socket ] || [ $SOURCE_TYPE == syslog ]; then
    assign_value 'Socket Connection Mode' 'tcp'
    MODE=$func_result
    if [ $MODE == unix ]; then
        assign_value 'Absolute path to conn:' './'
        export ADDRESS=$func_result
    fi
    SOURCE_TYPE=socket_$MODE
fi

# Recieves address for connections that require socket connection
if ! [ -z ${address[$SOURCE_TYPE]} ]; then
    assign_value 'Address' ${address[$SOURCE_TYPE]}
    export ADDRESS=$func_result
fi

#Recieves Token for a splunk_hec source
if [ $SOURCE_TYPE == http ]; then
    assign_multi_value 'Headers' ''
    export HEADERS=$func_result
fi

#Recieves Token for a splunk_hec source
if [ $SOURCE_TYPE == splunk_hec ]; then
    assign_value 'Token' ''
    export TOKEN=$func_result
fi

# Handle if connection needs TLS (for tcp mode in scoket, http and vector)
if [ ${TLS[$SOURCE_TYPE]} == true ]; then
    printf "Enable TLS (false): "
    read -r ENABLE_TLS
    ENABLE_TLS="${ENABLE_TLS:-false}"
    
    if [ $ENABLE_TLS == true ]; then
        printf "path to CA File (./): "
        read -r CA_PATH
        
        printf "path to Cert File (./): "
        read -r CERT_PATH

        printf "Verify Certificate (false): "
        read -r VERIFY_CERT
        
        printf "\npath to a certificate key file (./): "
        read -r KEY_PATH
        
        printf "Pass phrase to unlock: "
        read -sr KEY_PASS
        

    fi
    export ENABLE_TLS
    export CA_PATH="${CA_PATH:-./}"
    export KEY_PATH="${KEY_PATH:-./}"
    export KEY_PASS="${KEY_PASS:-''}"
    export VERIFY_CERT="${VERIFY_CERT:-false}"
    export CERT_PATH="${CERT_PATH:-./}"
fi

export SOURCE_TYPE

#temporarily the output sink is a file...will be resolved after feedback
export OUT_FILE=$VECTOR_DIR"/output/vector-%Y-%m-%d.json"

# debug
vector --config $VECTOR_DIR/vector.toml $VECTOR_DIR/source_configs/$SOURCE_TYPE".toml" --verbose --threads 4

# prod
#vector --config src/vector/vector.toml --quiet --require-healthy --threads 4