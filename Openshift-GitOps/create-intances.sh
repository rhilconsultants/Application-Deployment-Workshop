#!/bin/bash
for i in {1..20}
do
        echo "create user$i instance"
        helm template new-user user-helm-template/ --set userName=user$i --output-dir user$i
        echo "move user$i instance to layers folder "
        mv 
done