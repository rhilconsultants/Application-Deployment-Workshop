#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <RANAGE_START> <RANAGE_END>"
    exit 1
fi

RANAGE_START=$1
RANAGE_END=$2

for ((i=RANAGE_START; i<=RANAGE_END; i++))
do
    echo "create user$i instance"
    helm template new-user user-helm-template/ --set userName=user$i --output-dir user$i
    echo "move user$i instance to layers folder"
    mv user$i/Workshop-instances/templates/* user$i/
    rm -rf user$i/Workshop-instances
    mv -fu user$i/ ../Argocd-instances/layers/
done