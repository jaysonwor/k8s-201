echo "sets up a 3 zone HA cluster with 3 master nodes and 2 knodes"

echo "cluster fqdn: $1"
echo "s3 bucket: $2"

echo "delete and recreate bucket"
aws s3 rb s3://$2 --force
aws s3api create-bucket --bucket $2

kops create secret --name $1 --state s3://$2 sshpublickey admin -i ~/.ssh/id_rsa.pub

kops create cluster --name=$1 --state=s3://$2 --zones=us-east-1a,us-east-1b,us-east-1c --node-count=2 --node-size=t2.micro \
--master-size=t2.micro --dns-zone=jlcontracting.org --master-zones=us-east-1a,us-east-1b,us-east-1c $3

export CLUSTER_FQDN=$1
export BUCKET_NAME=$2

