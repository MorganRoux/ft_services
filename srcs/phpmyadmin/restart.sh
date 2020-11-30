eval $(minikube docker-env)
kubectl delete -f ./phpmyadmin-deployment.yaml
docker build -t phpmyadmin-image ./
kubectl apply -f ./phpmyadmin-deployment.yaml
kubectl get pod