#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <RANAGE_START> <RANAGE_END>"
    exit 1
fi

RANAGE_START=$1
RANAGE_END=$2

for ((i=RANAGE_START; i<=RANAGE_END; i++))
do
        echo "restart dex server for user $i "
        oc rollout restart deployment user$i-argocd-dex-server -n user$i-argocd
        echo "restart argo server for user $i "
        oc rollout restart deployment user$i-argocd-server -n user$i-argocd
done