eval $(minikube docker-env)
kubectl delete -f ./mysql-deployment.yaml
docker build -t mysql-image ./
kubectl apply -f ./mysql-deployment.yaml
kubectl get pod