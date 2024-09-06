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
clear
kubectl get svc
kubectl get nodes -o wide
cat nginx-service.yaml 
kubectl describe svc nginx-service
ls
sudo vim apache-deployment.yaml
ls
cat apache-deployment.yaml 
cat nginx-deployment.yaml 
sudo vim apache-deployment.yaml 
ls
sudo vim apache-service.yaml
ls
kubectl apply -f apache-deployment.yaml 
kubectl apply -f apache-service.yaml 
kubectl get pods
kubectl get deployment
kubectl get svc
sudo vim apache-deployment.yaml 
kubectl apply -f apache-deployment.yaml 
kubectl get deployment
kubectl get pods
kubectl get deployment
kubectl get svc
kubectl get nodes -o wide
curl -O https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v2.5.4/docs/install/iam_policy.json
aws iam create-policy     --policy-name AWSLoadBalancerControllerIAMPolicy     --policy-document file://iam_policy.json
eksctl create iamserviceaccount   --cluster=my-cluster   --namespace=kube-system   --name=aws-load-balancer-controller   --role-name AmazonEKSLoadBalancerControllerRole   --attach-policy-arn=arn:aws:iam::851725603941:policy/AWSLoadBalancerControllerIAMPolicy   --approve   --region=ap-south-1
eksctl create iamserviceaccount   --cluster=eks-cluster   --namespace=kube-system   --name=aws-load-balancer-controller   --role-name AmazonEKSLoadBalancerControllerRole   --attach-policy-arn=arn:aws:iam::851725603941:policy/AWSLoadBalancerControllerIAMPolicy   --approve   --region=ap-south-1
eksctl utils associate-iam-oidc-provider   --region=ap-south-1   --cluster=eks-cluster   --approve
eksctl create iamserviceaccount   --cluster=eks-cluster   --namespace=kube-system   --name=aws-load-balancer-controller   --role-name AmazonEKSLoadBalancerControllerRole   --attach-policy-arn=arn:aws:iam::851725603941:policy/AWSLoadBalancerControllerIAMPolicy   --approve   --region=ap-south-1
kubectl get deployment -n kube-system aws-load-balancer-controller
kubectl get serviceaccount -n kube-system aws-load-balancer-controller
kubectl get pods -n kube-system -l app.kubernetes.io/name=aws-load-balancer-controller
kubectl get deployment
kubectl get pods
kubectl get pods -n kube-system
kubectl delete deployment aws-load-balancer-controller -n kube-system
kubectl delete service aws-load-balancer-controller -n kube-system
sudo snap install helm --classic
helm repo add eks https://aws.github.io/eks-charts
helm repo update eks
helm install aws-load-balancer-controller eks/aws-load-balancer-controller   -n kube-system   --set clusterName=eks-cluster   --set serviceAccount.create=false   --set serviceAccount.name=aws-load-balancer-controller
kubectl get deployment -n kube-system aws-load-balancer-controller
cat nginx-service.yaml 
cat nginx-deployment.yaml 
cat apache-service.yaml 
sudo vim nginx-apache-ingress.yaml
sudo vim nginx-apache-ingress.yaml 
kubectl apply -f nginx-apache-ingress.yaml 
kubectl get ingress
aws elbv2 describe-load-balancers
kubectl describe ingress example-ingress
cat nginx-apache-ingress.yaml 
sudo vim  nginx-apache-ingress.yaml 
cat nginx-apache-ingress.yaml 
kubectl apply -f nginx-apache-ingress.yaml 
sudo vim  nginx-apache-ingress.yaml 
kubectl apply -f nginx-apache-ingress.yaml 
ls
cat nginx-apache-ingress.yaml 
kubectl apply -f nginx-apache-ingress.yaml 
kubectl describe nginx-apache-ingress.yaml 
kubectl describe ingress nginx-apache-ingress.yaml 
kubectl describe ingress nginx-apache-ingress
ls
kubectl get ingress
kubectl describe ingress example-ingress
aws elbv2 describe-load-balancers
aws elbv2 describe-target-health --target-group-arn arn:aws:elasticloadbalancing:ap-south-1:851725603941:targetgroup/k8s-default-apachese-4f0faee400/6d40613cc520e8bb
clear
kubectl get deployment -n kube-system aws-load-balancer-controller
ls
cat nginx-apache-ingress.yaml 
kubectl get ingress
kubectl describe ingress
kubectl describe ingress example-ingress
curl -I http://k8s-default-examplei-56640473fa-182642304.ap-south-1.elb.amazonaws.com/nginx
kubectl get services
kubectl describe service nginx-service
kubectl get pods
kubectl describe service nginx-service
cat nginx-service.yaml 
cat apache-service.yaml 
cat nginx-apache-ingress.yaml 
sudo vim nginx-apache-ingress.yaml 
kubectl apply -f nginx-apache-ingress.yaml 
kubectl get ingrss
kubectl get ingress
kubectl describe ingress example-ingress
kubectl get pods
kubectl get pods -n kube-system
kubectl logs -l app=alb-ingress-controller
sudo vim nginx-apache-ingress.yaml 
kubectl logs -n kube-system aws-load-balancer-controller-6c97575f7d-ctzs8
clear
sudo vim nginx-apache-ingress.yaml 
kubectl apply -f nginx-apache-ingress.yaml 
cd /usr/share/nginx/html
cd /usr/share/nginx
cd /usr/share
ls
cd nginx
cd /apache
cd
kubectl exec -it nginx-deployment-576c6b7b6-hsjcn /bin/bash
kubectl get pods
kubectl exec -it apache-deployment-75444d694d-n7mlj /bin/bash
kubectl exec -it nginx-deployment-576c6b7b6-hsjcn /bin/bash
cat nginx-apache-ingress.yaml 
kubectl apply -f nginx-apache-ingress.yaml 
kubectl exec -it nginx-deployment-576c6b7b6-hsjcn /bin/bash
kubectl get pods
kubectl exec -it apache-deployment-75444d694d-n7mlj /bin/bash
git init
git
git init
git commit -m "single ingress file"
git branch -M main
git remote add origin https://github.com/RutvijYudiz/nginxapachekubernates.git
git push -u origin main
git remote add origin https://github.com/RutvijYudiz/nginxapachekubernates.git
git branch -M main
git push -u origin main
git branch
git push -u origin master
git inti
git init
git add .
git commit -m "single ingress file"
git push
git push --set-upstream origin main
kubectl get ingress
kubectl delete ingress example-ingress
cat nginx-apache-ingress.yaml 
cat nginx-service.yaml 
cat apache-service.yaml 
ls
cat nginx-ingress.yaml
sudo vim nginx-ingress.yaml
sudo vim apache-ingress.yaml
sudo vim nginx-ingress.yaml
sudo vim apache-ingress.yaml
sudo vim nginx-ingress.yaml
kubectl apply -f apache-ingress.yaml 
kubectl apply -f nginx-ingress.yaml 
kubectl apply -f apache-ingress.yaml 
ls
cat nginx-ingress.yaml 
sudo vim nginx-ingress.yaml 
kubectl apply -f apache-ingress.yaml 
kubectl apply -f nginx-ingress.yaml 
kubectl -n kube-system get configmap/aws-auth -o yaml > aws-auth.yaml
kubectl apply -f aws-auth.yaml
kubectl get -n kubesystem aws-auth.yaml 
kubectl get -n kubesystem aws-auth
sudo vim nginxapacheconfigmap
kubectl apply -f aws-auth.yaml
ls
kubectl get configmap aws-auth -n kube-system -o yaml
kubectl apply -f aws-auth.yaml
l
ls
sudo vim aws-auth-latest.yaml
kubectl apply -f aws-auth-latest.yaml
kubectl get configmap aws-auth -n kube-system -o yaml
ls
nginx-apache-role.yaml
sudo vim nginx-apache-role.yaml
sudo vim nginx-apache-rolebinding.yaml
sudo apply -f nginxapacheconfigmap 
kubectl  apply -f nginxapacheconfigmap 
kubectl  apply -f nginx-apache-role
kubectl  apply -f nginx-apache-role.yaml 
kubectl  apply -f nginx-apache-rolebinding.yaml 
ls -al
ls
cat nginxapacheconfigmap 
cat nginx-apache-role
cat nginx-apache-role.yaml 
cat nginx-apache-rolebinding.yaml 
sudo vim nginx-apache-role
sudo vim nginx-apache-role.yaml 
kubectl apply -f nginx-apache-role.yaml 
sudo vim nginx-apache-role.yaml 
kubectl apply -f nginx-apache-role.yaml 
