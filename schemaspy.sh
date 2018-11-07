#!/bin/sh

schemaspy="schemaspy-6.0.0.jar"
type="mysql"
driver="mysql-connector-java-8.0.13.jar"

database="mysql"
schema=""
host="localhost"
port="3306"
user="root"
output="./output"

while getopts d:h:u:p:o:s: OPT
do
    case $OPT in
        d) FLG_database="TRUE" ; database=$OPTARG ;;
        s) FLG_schema="TRUE" ; schema=$OPTARG ;;
        h) FLG_host="TRUE" ; host=$OPTARG ;;
        p) FLG_port="TRUE" ; port=$OPTARG ;;
        u) FLG_user="TRUE" ; user=$OPTARG ;;
        o) FLG_output="TRUE" : output=$OPTARG ;;
    esac
done

if [ "$FLG_schema" = "" ]; then
    schema=$database
fi

java -jar ./lib/$schemaspy \
    -t $type \
    -db $database \
    -s $schema \
    -host $host \
    -port $port \
    -u $user \
    -pfp \
    -dp ./driver/$driver \
    -o $output/$database

open $output/$database/index.html

