echo "deletes the cluster"

echo "cluster FQDN: $1"
echo "s3 bucket: $2"

kops create cluster --name=$1 --state=s3://$2
