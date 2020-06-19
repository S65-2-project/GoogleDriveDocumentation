#https://github.com/DandyDeveloper/charts/tree/master/charts/redis-ha
helm repo add dandydev https://dandydeveloper.github.io/charts
helm repo update

#develop
helm install redis dandydev/redis-ha -f values.develop.yaml -n s652-develop
helm upgrade redis dandydev/redis-ha -f values.develop.yaml -n s652-develop
helm uninstall redis -n s652-develop

#production
helm install redis dandydev/redis-ha -f values.production.yaml -n s652
helm upgrade redis dandydev/redis-ha -f values.production.yaml -n s652
helm uninstall redis -n s652
