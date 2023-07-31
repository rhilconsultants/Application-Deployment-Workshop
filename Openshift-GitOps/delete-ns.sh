#!/bin/bash
for i in {1..20}
do
        echo "delete user$i argo ns "
        oc delete ns user$i-argocd
        echo "delete user$i app ns "
        oc delete ns user$i-application
done