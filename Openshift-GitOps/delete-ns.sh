#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <RANAGE_START> <RANAGE_END>"
    exit 1
fi

RANAGE_START=$1
RANAGE_END=$2

for ((i=RANAGE_START; i<=RANAGE_END; i++))
do
        echo "delete user$i argo ns "
        oc delete ns user$i-argocd
        echo "delete user$i app ns "
        oc delete ns user$i-application
done