eval $(minikube docker-env)
kubectl delete -f ./ftp-deployment.yaml
docker build -t ftp-image ./
kubectl apply -f ./ftp-deployment.yaml

sleep 2
kubectl get pod
kubectl get service