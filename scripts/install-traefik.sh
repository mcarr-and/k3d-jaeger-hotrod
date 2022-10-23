helm repo add traefik https://helm.traefik.io/traefik
helm repo update

helm install traefik traefik/traefik -n kube-system -f traefik-values.yaml

kubectl apply -f ingress-traefik.yaml