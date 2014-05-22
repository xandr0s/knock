#!/bin/bash

domain=$1
wordlist=$2

trap 'echo -e "\nExit"; exit 1' SIGINT

cat "$wordlist" | while read sub; do
    host -W1 $sub.$domain 8.8.8.8 > /dev/null && echo $sub.$domain - OK
done