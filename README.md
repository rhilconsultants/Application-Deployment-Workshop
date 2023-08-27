# This Repository will Assist to bootstarp multiple instances of argoCD for workshop's

## Repo structure

### Argo-App,Folder

This Holds the argo applicationSet that will deploy all argoCD instanaces.

### ArgoCD-instances,Folder

this holds the "base" folder that resouces the argocd cr for the instances.
under the "layers" folder there is all the ArgoCD instnaces layers
under each "user#" layer there is the following files:

1. argocd.yaml --> a patch to the base CR with the relevnt RBAC for the spesific user.
2. CRB.yaml --> for the user#-application namespace for perimissions.
3. group.yaml --> create a group for the user to be used in the argocd cr.
4. namepsace.yaml --> creates the user#-application namespace with the argo.managed-by label.
5. RB-1 & RB-2 yaml files --> create namespace admin for user# on their user#-argocd and user#-application namespaces.

---
Class-artifacts,Folder holds images for my application Deployment labs, please **dont delete**

---

### Openshift-GitOps, Folder

this folder holds tools and yaml to assist with bootstraping a clean cluster:
Under the user-helm-template folder, there is a HELM chart that create new user layers.

- Argocd_instance.yaml, the Openshift-gitops name space ArgoCD instance CR with the admin group RBAC
- group.yaml, this will create an admin group with the admin user.
- todo.md more instrucation on the bashscripts files and needed oc commands to run to fully run the enviorment.

## This repo need more work to fully automate bootstarping
