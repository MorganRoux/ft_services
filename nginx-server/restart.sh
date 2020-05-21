eval $(minikube docker-env)
kubectl delete -f ./nginx-deployment.yaml
docker build -t nginx-image ./
kubectl apply -f ./nginx-deployment.yaml
sleep 2
kubectl get pod
kubectl get service