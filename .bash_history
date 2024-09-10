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
<<<<<<< HEAD
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
=======
>>>>>>> 003dd199f054c83b77f3098bd486a16143577eb0
clear
ls
cat nginx-apache-role.yaml 
cat nginx-apache-rolebinding.yaml 
ls
cat nginxapacheconfigmap 
kubectl --as TempUser get nodes
sudo vim nginx-apache-rolebinding.yaml
kubectl apply -f nginx-apache-clusterrolebinding.yaml
kubectl apply -f nginx-apache-rolebinding.yaml
sudo vim nginx-apache-rolebinding.yaml
kubectl apply -f nginx-apache-rolebinding.yaml
sudo vim nginx-apache-role.yaml 
kubectl apply -f nginx-apache-role
kubectl apply -f nginx-apache-role.yaml 
ls
sudo vim nginx-apache-rolebinding
sudo vim nginx-apache-rolebinding.yaml 
kubectl apply -f nginx-apache-rolebinding.yaml 
kubectl --as TempUser get nodes
kubectl --as TempUser get ingress
kubectl --as TempUser get pod
kubectl --as TempUser get node
aws eks update-kubeconfig --region ap-south-1 --name eks-cluster 
kubectl --as TempUser get node
ls
kubectl apply -f nginx-apache-role.yaml 
kubectl apply -f nginx-apache-rolebinding.yaml 
cat nginxapacheconfigmap 
sudo vim  nginxapacheconfigmap 
kubectl apply -f nginxapacheconfigmap 
cat nginxapacheconfigmap 
sudo vim nginx-apache-rolebinding.yaml 
kubectl apply -f nginx-apache-rolebinding.yaml
sudo vim node-viewer-clusterrole.yaml
sudo vim node-viewer-clusterrole
ls
sudo vim nginx-apache-role
sudo vim nginx-apache-role.yaml 
kubectl apply -f  nginx-apache-role.yaml 
kubectl --as TempUser get node
aws eks update-kubeconfig --region ap-south-1 --name eks-cluster 
kubectl --as TempUser get node
kubectl --as TempUser get pod
kubectl --as TempUser get ingress
kubectl --as TempUser get deployment
kubectl --as TempUser get svc
kubectl --as TempUser get nodes
cat aws-auth -n kube-system 
ls
cat aws-auth
cat aws-auth.yaml 
kubectl get pods -n kube-system
kubectl get aws-auth -n kube-system
kubectl get aws-auth 
kubectl get configmap -n kube-system
kubectl describe aws-auth -n kube-system
kubectl get configmap aws-auth -n kube-system -o yaml
ls
cat aws-auth.yaml 
rm -rf aws-auth.yaml 
ls
kubectl --as TempUser get svc
ls
sudo vim aws-auth-latest.yaml 
kubectl apply -f aws-auth-latest.yaml 
kubectl describe configmap aws-auth -n kube-system
kubectl --as TempUser get node
sudo vim aws-auth-latest.yaml 
kubectl apply -f aws-auth-latest.yaml 
kubectl describe configmap aws-auth -n kube-system
kubectl --as TempUser get node
kubectl --as TempUser get pod
kubectl --as TempUser get node
k config current-context
kubectl config current-context
cd .aws/
ls
cat credentials 
kubectl get ns
kubectl get svc
kubectl get deploy
k get nodes
kubectl get nodes
cd
kubectl --as TempUser get node
kubectl --as TempUser get pod
kubectl get nodes -o wide
kubectl --as TempUser get nodes
cd .aws/
ls
cat credentials 
cd
kubectl get nodes
cd .aws/
ls
nano credentials 
cd
cd .aws/
nano credentials 
ls
cat config 
cd
aws configure
aws configure --profile TempUser
kubectl get pods
aws eks update-kubeconfig --region ap-south-1 --name eks-cluster
aws eks update-kubeconfig --region ap-south-1 --name eks-cluster --profile TempUser
kubectl config current-context
kubectl get pods
kubectl get nodes
cd .aws/
ls
cat credentials 
cd
kubectl get pods
kubectl get nodes
git add .
ls -al
git add .
aws configure
cd .aws/
ls
cat credentials 
cd
aws configure
git add .
chmod +rw .apache-ingress.yaml.swp
ls -l .apache-ingress.yaml.swp
sudo chown ubuntu:ubuntu .apache-ingress.yaml.swp
git add .
sudo chown ubuntu:ubuntu .nginx-apache-role.swo
git add .
sudo chown ubuntu:ubuntu .nginx-apache-role.swo
git add .
chmod +rw .nginx-apache-role.swo
git add .
echo "*.swp" >> .gitignore
git add .
git commit -m "RoleBinding --> Create a new user and given permission"
git push
echo ".aws/credentials" >> .gitignore
git add .
git commit -m "RoleBinding --> Create a new user and given permission"
git push
git log --all -- .aws/credentials
echo ".aws/credentials" >> .gitignore
git add .gitignore
git commit -m "Add .aws/credentials to .gitignore"
git push origin main
pip install git-filter-repo
sudo apt install python3-pip
git filter-repo --path .aws/credentials --invert-paths
git filter-branch --force --index-filter   'git rm --cached --ignore-unmatch .aws/credentials'   --prune-empty --tag-name-filter cat -- --all
rm -rf .git/refs/original/
git reflog expire --expire=now --all-ref
git gc --prune=now --aggressive
git push
ls
cd aws
ls
cd
ll
git stash
git add .
git commit -m "Add .aws/credentials to .gitignore"
git push
git pull
git pull origin main
git pull origin main --no-rebase
git push
git pull
ls
ls -al
git add nginx-apache-ingress.yaml
git add nginx-apache-role.yaml
git add nginx-apache-rolebinding.yaml
git add nginx-deployment.yaml
git add nginx-ingress.yaml
git add nginx-service.yaml
git add nginxapacheconfigmap
git commit -m "RoleBinding done by creating new user"
git push
git push origin main
ls
cat nginx-apache-role.yaml 
sudo vim nginx-apache-role.yaml 
git add .
git commit -m "qw"
git pusb
git push
git pull origin main --no-rebase
git pull origin main --allow-unrelated-histories
git pull origin main --no-rebase --allow-unrelated-histories
git pull origin main --rebase --allow-unrelated-histories
git add .
git commit -m "As"
git push
git pull
ls -al
cat aws-auth-latest.yaml 
cat nginx-apache-role.yaml 
cat nginx-apache-rolebinding.yaml 
history
ls -al
aws configure
cat nginx-apache-role
cat nginx-apache-role.yaml 
sudo vim  nginx-apache-role.yaml 
kubectl apply -f nginx-apache-role.yaml 
sudo vim  nginx-apache-role.yaml 
kubectl apply -f nginx-apache-role.yaml 
sudo vim  nginx-apache-role.yaml 
kubectl apply -f nginx-apache-role.yaml 
cd /home/ubuntu/.kube/
ls
cat config 
cd
sudo vim  nginx-apache-role.yaml 
kubectl apply -f nginx-apache-role.yaml 
kubectl apply -f nginx-apache-role
sudo rm -rf nginx-apache-role
sudo vim nginx-apache-role
kubectl apply -f nginx-apache-role
ls
sudo vim nginx-apache-role.yaml
kubectl apply -f nginx-apache-role
kubectl apply -f nginx-apache-role.yaml 
sudo apt-get install yamllint
yamllint /home/ubuntu/.kube/config
sudo apt-get remove --purge kubectl
sudo snap remove kubectl
sudo rm /usr/local/bin/kubectl
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
kubectl version --client
curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin
kubectl version --short --client
kubectl get nodes
cd /home/ubuntu/.kube/
ls
cat config 
sudo vim config 
pwd
ls
rm /home/ubuntu/.kube/config
cd
rm /home/ubuntu/.kube/config
rm /home/ubuntu/.kube
ls
aws eks update-kubeconfig --region ap-south-1 --name eks-cluster
aws configure
aws eks update-kubeconfig --region ap-south-1 --name eks-cluster
kubectl get nodes
kubectl get pod
kubectl get svc
kubectl get ingress
clear
ls
cat nginxapacheconfigmap 
cat nginx-apache-role
git add .
git commit -m "changes in .conf"
git push
ls
cat nginx-apache-rolebinding.yaml 
cat nginx-apache-role.yaml 
cat nginx-apache-role
rm -rf  nginx-apache-role.yaml 
cat nginx-apache-role
sudo vm nginx-apache-role
sudo vim nginx-apache-role
kubectl apply -f nginx-apache-role
sudo vim nginx-apache-role
sudo vim nginx-apache-role-restricted.yaml
kuebctl apply -f nginx-apache-role-restricted.yaml
kubectl apply -f nginx-apache-role-restricted.yaml
sudo vim nginx-apache-role-restricted.yaml
kubectl apply -f nginx-apache-role-restricted.yaml
sudo vim nginx-apache-role
kubectl nginx-apache-role
kubectl apply -f nginx-apache-role
sudo vim nginx-apache-role
kubectl apply -f nginx-apache-role
sudo vim nginx-apache-role
ls -al
cat nginx-apache-role
cat nginx-apache-role-restricted.yaml
rm -rf nginx-apache-role-restricted.yaml
ls -al
cat nginx-apache-rolebinding.yaml 
ls -al
cat nginx-apache-role
cat aws-auth-latest.yaml
cat nginx-apache-rolebinding.yaml 
kubectl get pods -A
kubectl get configmaps -A
kubectl describe configmap -n kube-system aws-auth
kubectl edit  configmap -n kube-system aws-auth
ll
cat aws-auth-latest.yaml 
kubectl get rbac
kubectl get roles
cat nginx-apache-rolebinding.yaml
cat nginx-apache-role
clear
ls -al
kubectl get nodes
kubectl get pods
sudo apt update
kubectl get pods
kubectl get nodes
kubectl get pods
kubectl get nodes
kubectl get pods
kubectl get svc
kubectl get ingress
kubectl get nodes
clear
kubectl get pods
kubectl delete deployment 
ls -al
kubectl deployment delte nginx-deployment.yaml 
kubectl deployment delte nginx-deployment
kubectl deployment delete nginx-deployment
kubectl deployment delete nginx-deployment.yaml 
kubectl delete deployment  nginx-deployment.yaml 
kubectl delete deployment  nginx-deployment
kubectl get deployment
kubectl delete deployment apache-deployment.yaml 
kubectl delete deployment apache-deployment
kubectl get deployment
kubectl get ingress
kubectl get deployment
kubectl apply -f nginx-deployment.yaml
kubectl apply -f apache-deployment.yaml
kubectl get pods
kubectl get nodes
kubectl get deployment
cat nginx-deployment.yaml 
sudo vim nginx-deployment.yaml 
kubectl apply -f  nginx-deployment.yaml 
ls
sudo vim persistentvolume.yaml
kubectl apply -f persistentvolume.yaml 
sudo vim persistentvolumeclaim.yaml
kubectl apply -f persistentvolumeclaim.yaml 
kubectl get persistentvolume
kubectl get persistentvolumeclaim.yaml 
kubectl get persistentvolumeclaim
kubectl get deployments
kubectl get pods
kubectl describe pod nginx-deployment-5db7c8c84c-lq6p6
;s
ls
cat persistentvolume
cat persistentvolume.yaml 
cp persistentvolume my-pv.yaml
cp persistentvolume.yaml my-pv.yaml
ls
rm -rf persistentvolume.yaml 
cat my-pv.yaml
mv persistentvolumeclaim.yaml my-pvc.yaml
ls
kubectl apply -f my-pvc.yaml
kubectl describe pod nginx-deployment-5db7c8c84c-lq6p6
kubectl get pods
kubectl describe pod nginx-deployment-5db7c8c84c-mrpxl
kubectl describe pod nginx-deployment-5db7c8c84c-lq6p6
kubectl get pvc
kubectl describe pvc my-pvc
kubectl get pv
kubectl describe pv my-pv
kubectl get pods
cat my-pv
ls

sudo vim  nginx-deployment.yaml 
kubectl apply -f   nginx-deployment.yaml 
kubectl get pods
kubectl describe nginx-deployment-5db7c8c84c-mrpxl
kubectl describe pod nginx-deployment-5db7c8c84c-mrpxl
kubectl get pods
kubectl get svc
kubectl get ingress
kubectl get pods
kubectl exec -it nginx-deployment-5db7c8c84c-mrpxl /bin/bash
ls
kubectl get pods
kubectl describe pod nginx-deployment-5db7c8c84c-mrpxl
kubectl get pods
kubectl exec -it nginx-deployment-5db7c8c84c-mrpxl /bin/bash
ls
cat nginx-deployment.yaml 
kubectl apply -f nginx-deployment.yaml 
kubectl exec -it nginx-deployment-5db7c8c84c-mrpxl /bin/bash
ls
cat my-pv.yaml 
cat my-pvc.yaml 
cat my-pv.yaml 
sudo vim my-pv.yaml 
kubectl apply -f  my-pv.yaml 
kubectl apply -f  my-pvc.yaml 
kubectl get pods
kubectl delete pod nginx-deployment-5db7c8c84c-mrpxl
kubectl get pods
kubectl exec -it nginx-deployment-5db7c8c84c-6266x /bin/bash
sudo vim my-pv.yaml 
ls
cat my-pv
cat my-pv.yaml 
kubectl get nodes
ls -al
cd /mnt
ls
ls -al
cd data
cd
ls
cat my-pv.yaml 
kubectl get pod
kubectl exec -it nginx-deployment-5db7c8c84c-6266x /bin/bash
cat my-pv.yaml 
cat my-pvc.yaml 
ls -al
ls
cat nginx-deployment.yaml 
sudo mkdir -p /mnt/data
sudo chmod 777 /mnt/data  # or adjust permissions as needed
kubectl get pods -o wide
kubectl get pvc
kubectl describe pod my-pvc
kubectl describe pod my-pvc.yaml 
kubectl describe pvc my-pvc.yaml 
kubectl describe pvc my-pvc
kubectl get pods -o wide
sudo ls -l /mnt
cd /mnt/
ls 
cd data/
ls 
ls -al
pwd
ls -al
cd
kubectl get nodes
kubectl get pods
kubectl delete pod nginx-deployment-5db7c8c84c-6266x
cd /mnt/data/
ls -al
cd .
ls
ls -al
cd
kubectl get pvc
kubectl get pv
kubectl get pods
cat my-pv
cat my-pv.yaml 
ls
cat nginx-deployment.yaml 
kubectl exec -it nginx-deployment-5db7c8c84c-nnhm7 /bin/bash
cd /mnt/
ls -ak
cd
kubectl get nodes
cat my-pvc.yaml 
clear
ls
cat my-pv.yaml 
ls
cat my-pv.yaml 
cat my-pvc.yaml 
