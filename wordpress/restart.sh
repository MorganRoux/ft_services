eval $(minikube docker-env)
kubectl delete -f ./wp-deployment.yaml
docker build -t wp-image ./
kubectl apply -f ./wp-deployment.yaml
sleep 2
kubectl get pod
kubectl get service