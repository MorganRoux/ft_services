eval $(minikube docker-env)
kubectl delete -f ./influxdb-deployment.yaml
docker build -t influxdb-image ./
kubectl apply -f ./influxdb-deployment.yaml

sleep 2
kubectl get pod
kubectl get service