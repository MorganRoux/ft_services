eval $(minikube docker-env)
kubectl delete -f ./phpmyadmin.yaml
docker build -t phpmyadmin ./
kubectl apply -f ./phpmyadmin.yaml
kubectl get pod