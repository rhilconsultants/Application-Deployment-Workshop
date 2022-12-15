## add cluster admin to the ArgoCD ServiceAccount

```Bash
oc adm policy add-cluster-role-to-user cluster-admin system:serviceaccount:openshift-gitops:openshift-gitops-argocd-application-controller
```

## add user role "admin" to User work namespaces for each user

```Bash
oc adm policy add-role-to-user admin user{n} -n user{n}-argocd
oc adm policy add-role-to-user admin user{n}} -n user{n}-application
```

## Add 