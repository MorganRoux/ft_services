minikube stop
minikube delete
minikube start --cpus=2 --disk-size 11000 --vm-driver virtualbox --extra-config=apiserver.service-node-port-range=1-35000
minikube addons enable dashboard
minikube addons enable metallb

#=========
eval $(minikube docker-env)
docker build -t nginx-image ./srcs/nginx-server/
docker build -t ftp-image ./srcs/ftps-server/
docker build -t phpmyadmin-image ./srcs/phpmyadmin/
docker build -t mysql-image ./srcs/mysql/
docker build -t wp-image ./srcs/wordpress/
docker build -t influxdb-image ./srcs/influxdb/
docker build -t grafana-image ./srcs/grafana/

#kubectl delete -f ./metallb/configmap.yaml
kubectl create -f ./srcs/metallb/configmap.yaml

#kubectl delete -f ./nginx-server/nginx-deployment.yaml
kubectl apply -f ./srcs/nginx-server/nginx-deployment.yaml

#kubectl delete -f ./ftps-server/ftp-deployment.yaml
kubectl apply -f ./srcs/ftps-server/ftp-deployment.yaml

#kubectl delete -f ./phpmyadmin/phpmyadmin-deployment.yaml
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin-deployment.yaml

#kubectl delete -f ./mysql/mysql-deployment.yaml
kubectl apply -f ./srcs/mysql/mysql-deployment.yaml

#kubectl delete -f ./wordpress/wp-deployment.yaml
kubectl apply -f ./srcs/wordpress/wp-deployment.yaml

sleep 4

kubectl get pod
kubectl get service
kubectl get pvc

#===============
MINIKUBE_IP=`minikube ip`;

echo Minikube ip : $MINIKUBE_IP