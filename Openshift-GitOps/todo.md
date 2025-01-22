# This manual of how to create and work with Argocd and manage user layers

## Try First to bootstrap all with
```Bash
oc apply -k ./Openshift-GitOps
```

## add cluster admin to the ArgoCD ServiceAccount

```Bash
oc adm policy add-cluster-role-to-user cluster-admin system:serviceaccount:openshift-gitops:openshift-gitops-argocd-application-controller
```

## add user role "admin" to User work namespaces for each user

```Bash
oc adm policy add-role-to-user admin user{n} -n user{n}-argocd
oc adm policy add-role-to-user admin user{n}} -n user{n}-application
```

## to create a new user layer navigate to Openshift-GitOps->user-helm-template, and run the following command

```Bash
./create-intances.sh 'starting user numer' 'end user numeber'

exmaple:
./create-intances.sh 1 5
```

this will create 5 new user layers under the Argocd-instances/layers folder

## to delete all created namespaces run the following

```Bash
./delete-ns.sh 1 20
```

this will delete all argocd and application namespaces for users 1-20

## to restart all dex and argocd-servers run the following

```Bash
./restart.sh 1 15
```

this will restart all argocd-server and dex-server to users 1-15
