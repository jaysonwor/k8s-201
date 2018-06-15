## Scope
Demonstrates pod resilience 

### Steps
* kubectl create -f kuard-deploy.yml
* kubectl create -f kuard-service.yml
	* open ports 30000-32767
* kubectl scale deploy kuard --replicas=5
	* kubectl delete po -l app=kuard
