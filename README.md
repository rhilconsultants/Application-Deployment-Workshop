# This Repository will Assist to bootstrap multiple instances of argoCD for workshop's

## Repo structure

### Argo-App, Folder

This Holds the argo applicationSet that will deploy all argoCD instances.

### ArgoCD-instances, Folder

this holds the "base" folder that resouces the argocd cr for the instances.
under the "layers" folder there are all the ArgoCD instance's layers
Under each "user#" layer there are the following files:

1. argocd.yaml --> a patch to the base CR with the relevant RBAC for the specific user.
2. CRB.yaml --> for the user#-application namespace for perimissions.
3. group.yaml --> Create a group for the user to be used in the argocd cr.
4. namepsace.yaml --> creates the user#-application namespace with the argo.managed-by label.
5. RB-1 & RB-2 yaml files --> create namespace admin for user# on their user#-argocd and user#-application namespaces.

---
Class-artifacts,Folder holds images for my application Deployment labs, please **don't delete**

---

### Openshift-GitOps, Folder

this folder holds tools and yaml to assist with bootstrapping a clean cluster:
Under the user-helm-template folder, there is a HELM chart that creates new user layers.

- Argocd_instance.yaml, the Openshift-gitops name space ArgoCD instance CR with the admin group RBAC
- group.yaml, this will create an admin group with the admin user.
- todo.md more instruction on the bashscripts files and needed oc commands to run to fully run the enviorment.

## This repo needs more work to fully automate bootstarping
