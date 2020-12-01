eval $(minikube docker-env)
kubectl delete -f ./metallb-configmap.yaml
kubectl create -f ./metallb-configmap.yaml
kubectl get services