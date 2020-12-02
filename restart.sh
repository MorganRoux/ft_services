

#=========
eval $(minikube docker-env)
docker build -t nginx-image ./srcs/nginx-server/
docker build -t ftp-image ./srcs/ftps-server/
docker build -t phpmyadmin-image ./srcs/phpmyadmin/
docker build -t mysql-image ./srcs/mysql/
docker build -t wp-image ./srcs/wordpress/
docker build -t influxdb-image ./srcs/influxdb/
docker build -t grafana-image ./srcs/grafana/

kubectl delete -f ./srcs/metallb/metallb-configmap.yaml
kubectl create -f ./srcs/metallb/metallb-configmap.yaml
kubectl apply -f ./srcs/nginx-server/nginx-deployment.yaml
kubectl apply -f ./srcs/ftps-server/ftp-deployment.yaml
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin-deployment.yaml
kubectl apply -f ./srcs/mysql/mysql-deployment.yaml
kubectl apply -f ./srcs/wordpress/wp-deployment.yaml
kubectl apply -f ./srcs/influxdb/influxdb-deployment.yaml
kubectl apply -f ./srcs/grafana/grafana-deployment.yaml
kubectl apply -f ./srcs/grafana/grafana-deployment.yaml

sleep 4

kubectl get pod
kubectl get service
kubectl get pvc

#===============
MINIKUBE_IP=`minikube ip`;

echo Minikube ip : $MINIKUBE_IP
