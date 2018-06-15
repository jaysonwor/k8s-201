echo "install dashboard"

kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml

echo "create user"

kubectl apply -f sample-user.yml

echo "bind user permission"

kubectl apply -f sample-user-binding.yml

echo "access the dashboard here"
kubectl cluster-info 

echo "token for access"
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}')
