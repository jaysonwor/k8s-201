## Scope
Demonstrates master resilience 

### Prerequisites
* locustio

### Steps
* locust -f locustfile.py --host=https://$CLUSTER_FQDN/ui
	* set env vars for $USER and $PASSWORD
	* run: http://127.0.0.1:8089
* kill master in aws

