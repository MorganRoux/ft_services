
eval $(minikube docker-env)

kubectl delete -f ./nginx-server/nginx-deployment.yaml
docker build -t nginx-image ./nginx-server/
kubectl apply -f ./nginx-server/nginx-deployment.yaml

kubectl delete -f ./ftps-server/ftp-deployment.yaml
docker build -t ftp-image ./ftps-server/
kubectl apply -f ./ftps-server/ftp-deployment.yaml

kubectl delete -f ./phpmyadmin/phpmyadmin-deployment.yaml
docker build -t phpmyadmin-image ./phpmyadmin/
kubectl apply -f ./phpmyadmin/phpmyadmin-deployment.yaml


kubectl delete -f ./mysql/mysql-deployment.yaml
docker build -t mysql-image ./mysql/
kubectl apply -f ./mysql/mysql-deployment.yaml


kubectl delete -f ./wordpress/wp-deployment.yaml
docker build -t wp-image ./wordpress/
kubectl apply -f ./wordpress/wp-deployment.yaml

sleep 2

kubectl get pod
kubectl get service
kubectl get pvc