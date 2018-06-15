## Scope
Add a new node to the cluster using KOPS

### Steps
* kops edit ig --name=$CLUSTER_FQDN --state=s3://$BUCKET_NAME nodes
* kops update cluster --name=$CLUSTER_FQDN --state=s3://$BUCKET_NAME 
