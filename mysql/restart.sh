kubectl delete -f ./mysql.yaml
docker build -t mysql ./
kubectl apply -f ./mysql.yaml
kubectl get pod