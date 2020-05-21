
eval $(minikube docker-env)

kubectl delete -f ./phpmyadmin/phpmyadmin-deployment.yaml
docker build -t phpmyadmin-image ./phpmyadmin/
kubectl apply -f ./phpmyadmin/phpmyadmin-deployment.yaml


kubectl delete -f ./mysql/mysql-deployment.yaml
docker build -t mysql-image ./mysql/
kubectl apply -f ./mysql/mysql-deployment.yaml


kubectl delete -f ./wordpress/wp-deployment.yaml
docker build -t wp-image ./wordpress/
kubectl apply -f ./wordpress/wp-deployment.yaml
kubectl get pod
kubectl get service
kubectl get pvc