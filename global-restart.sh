
eval $(minikube docker-env)

kubectl delete -f ./volumes/mysql-pvc.yaml
kubectl apply -f ./volumes/mysql-pvc.yaml

# kubectl delete -f ./phpmyadmin/phpmyadmin.yaml
# docker build -t phpmyadmin ./phpmyadmin/
# kubectl apply -f ./phpmyadmin/phpmyadmin.yaml


kubectl delete -f ./mysql/mysql.yaml
docker build -t mysql ./mysql/
kubectl apply -f ./mysql/mysql.yaml


kubectl delete -f ./wordpress/wp.yaml
docker build -t wp ./wordpress/
kubectl apply -f ./wordpress/wp.yaml
kubectl get pod
kubectl get service
kubectl get pvc