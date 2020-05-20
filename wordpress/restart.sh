eval $(minikube docker-env)
kubectl delete -f ./wp.yaml
docker build -t wp ./
kubectl apply -f ./wp.yaml
kubectl get pod