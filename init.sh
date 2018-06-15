
echo "Install KOPS"
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops

echo "Install AWS CLI"
sudo apt-get update
sudo apt-get install python-pip  -y
sudo pip install awscli

echo "Install Kubectl"
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

echo "AWS Configuration"

echo "setup aws configure"
echo "setup s3 bucket (e.g aws s3api create-bucket --bucket kops-1q2w)"
echo "generate key: (e.g ssh-keygen -f .ssh/id_rsa)"



