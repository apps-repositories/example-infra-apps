# gitops-fun

A little playground for GitOps stuff

## Setup

Installing Argo CD

```bash
minikube start
cd env/in-cluster/argocd
kubectl create ns argocd
kubectl kustomize . | kubectl apply -f - -n argocd
```

Accessing Argo CD

```bash
kubectl port-forward svc/argocd-server -n argocd 8080:443
argocd admin initial-password -n argocd
open https://localhost:8080
```
