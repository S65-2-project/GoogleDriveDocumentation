helm repo update

#develop
helm install mongodb stable/mongodb-replicaset -f values.develop.yaml -n s652-develop
helm upgrade mongodb stable/mongodb-replicaset -f values.develop.yaml -n s652-develop
helm uninstall mongodb -n s652-develop

#production
helm install mongodb stable/mongodb-replicaset -f values.production.yaml -n s652
helm upgrade mongodb stable/mongodb-replicaset -f values.production.yaml -n s652
helm uninstall mongodb -n s652-develop
