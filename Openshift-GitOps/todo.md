## add cluster admin to the ArgoCD ServiceAccount

```Bash
oc adm policy add-cluster-role-to-user cluster-admin system:serviceaccount:openshift-gitops:openshift-gitops-argocd-application-controller
```

## add user role "admin" to User work namespaces

```Bash
oc adm policy add-role-to-user admin user1 -n user1-argocd
oc adm policy add-role-to-user admin user1 -n user1-application
```

