echo "sets up a 3 zone HA cluster with 3 master nodes and 2 knodes"

echo "s3 bucket: $1"

kops create cluster --name=jlcontracting.org --state=s3://$1 --zones=us-east-1a,us-east-1b,us-east-1c --node-count=2 --node-size=t2micro \ 
--master-size=t2.micro --dns-zone=jlcontracting.org --master-zones=us-east-1a,us-east-1b,us-east-1c

