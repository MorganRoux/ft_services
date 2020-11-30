eval $(minikube docker-env)
kubectl delete -f ./grafana-deployment.yaml
docker build -t grafana-image ./
kubectl apply -f ./grafana-deployment.yaml

sleep 2
kubectl get pod
kubectl get service