helm repo update

#develop
helm install rabbitmq stable/rabbitmq-ha -f values.develop.yaml -n s652-develop
helm upgrade rabbitmq stable/rabbitmq-ha -f values.develop.yaml -n s652-develop
helm uninstall rabbitmq -n s652-develop

#production
helm install rabbitmq stable/rabbitmq-ha -f values.production.yaml -n s652
helm upgrade rabbitmq stable/rabbitmq-ha -f values.production.yaml -n s652
helm uninstall rabbitmq -n s652
