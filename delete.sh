echo "deletes the cluster"

echo "cluster FQDN: $CLUSTER_FQDN"
echo "s3 bucket: $BUCKET_NAME"

kops delete cluster --name=$CLUSTER_FQDN --state=s3://$BUCKET_NAME --yes
