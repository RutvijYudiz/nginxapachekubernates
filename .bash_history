curl http://localhost:8080
clear
sudo apt update
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip
unzip awscliv2.zip
sudo ./aws/install -i /usr/local/aws-cli -b /usr/local/bin --update
aws configure
curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin
kubectl version --short --client
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version
eksctl create cluster --name eks-cluster --region ap-south-1 --node-type t2.medium --nodes-min 2 --nodes-max 3
clear
kubectl get nodes
kubectl get pods
sudo vim nginx-deployment.yaml
kubectl apply -f nginx-deployment.yaml
kubectl get pods
kubectl get deployment
kubectl get pods -o wde
kubectl get pods -o wide
curl http://localhost:8080
kubectl port-forward nginx-deployment-576c6b7b6-hsjcn 8080:80
sudo vim nginx-service.yaml
kubectl apply -f nginx-service.yaml
kubectl get service
kubectl get service -o wide
ls
cat nginx-service.yaml 
kubectl get svc
kubectl delete svc nginx-service
kubectl get svc
cat nginx-service.yaml
kubectl get svc
ls
rm  -rf nginx-service.yaml 
sudo vim nginx-service.yaml
kubectl apply -f nginx-service.yaml
clear
ls
cat nginx-service.yaml 
kubectl get service -o wide
curl 10.100.127.65
curl 10.100.127.65:3000
