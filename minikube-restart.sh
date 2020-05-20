minikube stop
minikube delete
minikube start --cpus=2 --disk-size 11000 --vm-driver virtualbox --extra-config=apiserver.service-node-port-range=1-35000
sh ./global-restart.sh
MINIKUBE_IP=`minikube ip`;
echo $MINIKUBE_IP