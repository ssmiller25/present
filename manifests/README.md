# Example deployment leveraging kustomize

## Usage

```sh
# From root of repository
kustomize build ./ | kubectl apply -f -
```

## Creation

* Run commands in ../deploy-manual
* Build out k8s configs:

```sh
kubectl get deployment present -o yaml --export > deployment.yaml
kubectl get service present -o yaml --export > service.yaml
kubectl get ingress present -o yaml --export > k8s-intro-ingress.yaml
```
