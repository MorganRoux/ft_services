minikube stop
minikube delete
minikube start --cpus=2 --disk-size 11000 --vm-driver virtualbox --extra-config=apiserver.service-node-port-range=1-35000
minikube addons enable dashboard
minikube addons enable metallb

#=========
eval $(minikube docker-env)
docker build -t nginx-image ./nginx-server/
docker build -t ftp-image ./ftps-server/
docker build -t phpmyadmin-image ./phpmyadmin/
docker build -t mysql-image ./mysql/
docker build -t wp-image ./wordpress/

kubectl delete -f ./metallb/configmap.yaml
kubectl create -f ./metallb/configmap.yaml

kubectl delete -f ./nginx-server/nginx-deployment.yaml
kubectl apply -f ./nginx-server/nginx-deployment.yaml

kubectl delete -f ./ftps-server/ftp-deployment.yaml
kubectl apply -f ./ftps-server/ftp-deployment.yaml

kubectl delete -f ./phpmyadmin/phpmyadmin-deployment.yaml
kubectl apply -f ./phpmyadmin/phpmyadmin-deployment.yaml

kubectl delete -f ./mysql/mysql-deployment.yaml
kubectl apply -f ./mysql/mysql-deployment.yaml

kubectl delete -f ./wordpress/wp-deployment.yaml
kubectl apply -f ./wordpress/wp-deployment.yaml

sleep 4

kubectl get pod
kubectl get service
kubectl get pvc

#===============
MINIKUBE_IP=`minikube ip`;

echo $MINIKUBE_IP