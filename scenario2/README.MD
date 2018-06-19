## Scope
Demonstrates knode resilience 

### Prerequisites
* locustio

### Steps
* locust -f locustfile.py --host=http://$CLUSTER_FQDN:8080
	* run: http://127.0.0.1:8089
* kill knode in aws

