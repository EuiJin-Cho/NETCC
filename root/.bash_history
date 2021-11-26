wget https://raw.githubusercontent.com/59nezytic/kubeadm_installation/main/kubeadm_installation.sh
chmod +x kubeadm_installation.sh 
source kubeadm_installation.sh 
kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=192.168.41.240
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
kubectl get nodes
watch kubectl get nodes
watch kubectl get po -A 
watch kubectl get nodes
clear
vi .kube/config 
kubectl config get-contexts
kubectl config get-clusters
apt update
snap install helm --classic
helm repo add bitnami https://charts.bitnami.com/bitnami
kubectl create ns monitoring
helm install kube-prometheus bitnami/kube-prometheus --set prometheus.thanos.create=true --set operator.service.type=ClusterIP --set prometheus.service.type=ClusterIP --set alertmanager.service.type=ClusterIP --set prometheus.thanos.service.type=LoadBalancer -n monitoring
kubectl get svc -A
helm install grafana bitnami/grafana --set service.type=NodePort --set admin.password=admin --set persistence.enabled=false -n monitoring
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
vi values.yaml
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
kubectl get svc -A
kubectl get no
vi values.yaml 
helm install mariadb   --set rootUser.password=MARIADB-ADMIN-PASSWORD   --set replication.password=MARIADB-REPL-PASSWORD   --set db.user=USER-NAME   --set db.password=USER-PASSWORD   --set db.name=DB-NAME   --set slave.replicas=1   --set metrics.enabled=true   --set metrics.serviceMonitor.enabled=true   bitnami/mariadb 
vi values.yaml 
helm del thanos --values --namespace monitoring bitnami/thanos
helm del thanos --namespace monitoring bitnami/thanos
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
kubectl get po -A
watch kubectl get po -n monitoring
kubectl get svc -a
kubectl get svc -A
helm del thanos bitnam
helm del thanos --namespace monitoring bitnami/thanos
kubectl get po -A
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
kubectl get svc -A
kubectl get po -A
kubectl get svc -A
kubectl edit svc kube-prometheus-prometheus-thanos -n monitoring
kubectl get svc -A
kubectl get po -A
kubectl get po -A -w
vi values.yaml
helm del thanos --namespace monitoring bitnami/thanos
kubectl edit svc kube-prometheus-prometheus-thanos -n monitoring
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
watch kubectl get po -A
kubectl get deploy
kubectl get deploy -A
kubectl get svc -A
kubectl delete po mariadb
kubectl delete po -A
kubectl get po
kubectl delete po mariadb-o
kubectl delete po mariadb-0
kubectl delete svc mariadb
kubectl get po
kubectl get svc
kubectl delete po mariadb-0
kubectl get po
kubectl get all -Ao wide
kubectl delete statefulset mariadb
kubectl get po
clear
kubectl get po -A
helm del thanos --values values.yaml --namespace monitoring bitnami/thanos
helm del thanos --namespace monitoring bitnami/thanos
helm del grafana bitnami/grafana
helm del grafana
clear
kubectl get po -A
helm del kube-prometheus bitnami/kube-prometheus
helm list
helm list -n monitoring
helm uninstall grafana -n monitoring
helm uninstall kube-prometheus -n monitoring
clear
kubectl get po -A
kubectl get svc -A
helm repo list
helm repo update
helm repo list
helm install kube-prometheus bitnami/kube-prometheus --set prometheus.thanos.create=true --set operator.service.type=ClusterIP --set prometheus.service.type=ClusterIP --set alertmanager.service.type=ClusterIP --set prometheus.thanos.service.type=LoadBalancer -n monitoring
vi values.yaml 
watch kubectl get po -A
helm install grafana bitnami/grafana --set service.type=NodePort --set admin.password=admin --set persistence.enabled=false -n monitoring
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
kubectl get po -A
watch kubectl get po -A
helm search repo bitnami
watch kubectl get po -A
vi values.yaml 
helm list -n monitoring
helm uninstall thanos -n monitorinng
helm uninstall thanos -n monitoring
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
watch kubectl get po -A
helm uninstall thanos -n monitoring
vi values.yaml 
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
kubectl get po -A
watch kubectl get po -A
helm uninstall thanos -n monitoring
vi values.yaml
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
watch kubectl get po -A
helm uninstall thanos -n monitoring
vi values.yaml
kubectl get po -A
vi values.yaml 
kubectl get po -A
kubectl get svc -A
vi values.yaml
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
kubectl get po -A
watch kubectl get po -A
kubectl get no
watch kubectl get po -A
helm uninstall thanos -n monitoring
vi values.yaml 
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
watch kubectl get po -A
kubectl get po -Aw
helm uninstall thanos -n monitoring
vi values.yaml 
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
kubectl get svc -n monitoring
helm list -n monitoring
kubectl get po -Aw
kubectl config get-contexts
watch kubectl get po -A
helm list -n monitoring
helm uninstall thanos -n monitoring
helm uninstall grafana -n monitoring
clear
kubectl get all -A
helm uninstall kube-prometheus -n monitoring
kubectl get po -A
kubectl get svc -A
helm install prometheus-operator   --set prometheus.thanos.create=true   --set operator.service.type=ClusterIP   --set prometheus.service.type=ClusterIP   --set alertmanager.service.type=ClusterIP   --set prometheus.thanos.service.type=LoadBalancer   --set prometheus.externalLabels.cluster="data-producer-0"   bitnami/prometheus-operator
kubectl get po -A
helm list -A
helm uninstall mariadb
helm install kube-prometheus bitnami/kube-prometheus --set prometheus.thanos.create=true --set operator.service.type=ClusterIP --set prometheus.service.type=ClusterIP --set alertmanager.service.type=ClusterIP --set prometheus.thanos.service.type=LoadBalancer -n monitoring
helm install grafana bitnami/grafana --set service.type=NodePort --set admin.password=admin --set persistence.enabled=false -n monitoring
watch kubectl get po -A
vi values.yaml 
kubectl get svc -A
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
kubectl get svc -A
watch kubectl get po -A
kubectl get po -A
kubectl logs thanos-storegateway-0 -n monitoring
helm uninstall thanos -n monitoring
kubectl get svc -A
kubectl edit svc -n monitoring kube-prometheus-prometheus-thanos
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
watch kubectl get po -A
helm uninstall thanos -n monitoring
helm list -A
helm uninstall grafana -n monitoring
helm uninstall kube-prometheus -n monitoring
\
clear
cd kubeview/
ls
cd charts/
helm install kubeview ./kubeview -f myvalues.yaml
helm install kubeview ./kubeview -f values.yaml
vi myvalues.yaml
helm install kubeview ./kubeview -f myvalues.yaml
kubectl get svc
cd
helm list -A
helm uninstall thanos -n monitoring
helm uninstall kubeview -n monitoring
helm uninstall grafana -n monitoring
helm uninstall kube-prometheus -n monitoring
kubectl get nod
kubectl get no
kubectl get po -A
helm install kube-prometheus bitnami/kube-prometheus --set prometheus.thanos.create=true --set operator.service.type=ClusterIP --set prometheus.service.type=ClusterIP --set alertmanager.service.type=ClusterIP --set prometheus.thanos.service.type=LoadBalancer -n monitoring
helm install grafana bitnami/grafana --set service.type=NodePort --set admin.password=admin --set persistence.enabled=false -n monitoring
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
kubectl get svc -A
kubectl get po -A
vi values.yaml 
kubectl get po -A
helm uninstall thanos -n monitoring
helm uninstall grafana -n monitoring
helm uninstall kube-prometheus -n monitoring
clear
helm install kube-prometheus bitnami/kube-prometheus --set prometheus.thanos.create=true --set operator.service.type=ClusterIP --set prometheus.service.type=ClusterIP --set alertmanager.service.type=ClusterIP --set prometheus.thanos.service.type=LoadBalancer -n monitoring
helm install grafana bitnami/grafana --set service.type=NodePort --set admin.password=admin --set persistence.enabled=false -n monitoring
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
helm install kubeview ./kubeview -f myvalues.yaml
cd charts
git clone https://github.com/benc-uk/kubeview.git
ls
watch kubectl get po -n monitoring
kubectl get svc
kubectl get svc -A
kubectl get po -a
kubectl get po -
kubectl get po -A
kubectl get svc -A
kubectl get po -Ao wide
ls
kubectl get svc -A
clear
ls
kubectl get po -A
ls
vim values.yaml 
ls
docker images
ls
kubefedctl 
kubefedctl --help
kubefedctl --h
kubefedctl -h
clear
kubectl get po -A
kubectl get nodes
kubectl get context
kubectl config get-contexts 
kubectl config get-cluster
kubectl config get-clusters
kubectl config get-contexts 
kubefedctl 
kubefedctl federate --help
history
kubefedctl federate --help
kubectl get ns
clear
kubectl config get-contexts 
kubefedctl federate 
clear
kubectl config get-contexts 
kubefedctl federate --help
docker images
kubectl get po -A
contents                      Applicable only to namespaces. If provided, the command will federate all resources within the namespace after federating the namespace.
docker images
kubectl get po -A
ls
docker images
docker image pull rjsdnfk9/ksk_tomcat
docker image pull -a rjsdnfk9/ksk_tomcat
docker images
docker ps
docker ps -a
docker ps
docker images
clear
ls
docker images
docker rmi rjsdnfk9/ksk_tomcat:1.0
docker rmi rjsdnfk9/ksk_tomcat:2.0
docker rmi rjsdnfk9/ksk_tomcat:3.0
docker images
clear
ls
mkdir Pod
ls
cd Pod/
ls
vim ksk-v1.yaml
ls
vim ksk.yaml 
kubectl get svc
kubectl get svc -a
kubectl get svc -A
vim ksk.yaml 
clear
kubectl get po -A
clear
ls
k create -f ksk.yaml 
k get po 
k get svc
clear
ls
kubectl get po 
watch kubectl get po 
watch kubectl get po -o wide
k delete -f ksk.yaml 
watch kubectl get po -o wide
kubectl get nodes -show-labels
k get po
k get no
k get no --show-labels
k get po
watch k get po
watch kubectl get po
kubectl get no
kubectl get no -o wide
kubectl config get-contexts 
vim /root/.kube/config 
kubectl get no -o wide
watch kubectl get po
kubectl label nodes core-worker1 ksk=work
k get no --show-labels 
ls
vim ksk.yaml 
k get po
vim ksk.yaml 
k get po
k create -f ksk.yaml 
vim ksk.yaml 
k create -f ksk.yaml 
k get po
k get po -w
k get po -o wide
watch k get po -o wide
watch kubectl get po -o wide
kubectl run nginx --image nginx
watch kubectl get po -o wide
kubectl delete po nginx
watch kubectl get po -o wide
kubectl get all -A
watch kubectl get po -o wide
kubectl get po -o wide
6gbm        0/2     Terminating         0          22m    <none>        gpu-worker     <none>           <none>
kubectl delete pod nginx --grace-period=0 --force
kubectl get po -o wide
kubectl delete pod web-6cd8854964-d6gbm --grace-period=0 --force
kubectl get po -o wide
k get svc
history
clear
k get nodes
k get po -A
k get po 
kubefedctl federate --help
kubectl get po
kubectl config get-contexts 
kubefedctl federate pod web-649f659989-68vrq --host-cluster-context=core
kubefedctl federate po web-649f659989-68vrq --host-cluster-context=core
kubefedctl federate pods web-649f659989-68vrq --host-cluster-context=core
kubectl get po -A
kubectl get svc
clear
kubectl get po
kubectl get po -A
kubectl get svc
kubectl get svc -A
k get no
chmod +x k8s_bash-completion.sh 
source k8s_bash-completion.sh 
k get no
k get po -A
chmod +x kubefed_installation.sh 
source kubefed_installation.sh
kubectl config get-contexts
systemctl daemon-reload
systemctl restart kubelet
kubefedctl join core --cluster-context core --host-cluster-context core --kubefed-namespace=kube-federation-system --v=2
kubefedctl join edge1 --cluster-context edge1 --host-cluster-context core --kubefed-namespace=kube-federation-system --v=2
kubefedctl join edge2 --cluster-context edge2 --host-cluster-context core --kubefed-namespace=kube-federation-system --v=2
kubefedctl join edge3 --cluster-context edge3 --host-cluster-context core --kubefed-namespace=kube-federation-system --v=2
kubefedctl join edge1 --cluster-context edge1 --host-cluster-context core --kubefed-namespace=kube-federation-system --v=2
ls
k get ns
helm install kube-prometheus bitnami/kube-prometheus --set prometheus.thanos.create=true --set operator.service.type=ClusterIP --set prometheus.service.type=ClusterIP --set alertmanager.service.type=ClusterIP --set prometheus.thanos.service.type=NodePort -n monitoring
helm install grafana bitnami/grafana --set service.type=NodePort --set admin.password=awdxsqeqe1! --set persistence.enabled=false -n monitoring
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
k get po -n monitoring
watch kubectl get po -n monitoring
k logs -n monitoring thanos-storegateway-0 
watch kubectl get po -n monitoring
k logs -n monitoring thanos-compactor-6b7d445f99-jl56x 
helm list -n monitoring
helm uninstall -n monitoring thanos
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
watch kubectl get po -n monitoring
k logs -n monitoring thanos-compactor-6b7d445f99-f9fqx 
k get po -A
k logs -n monitoring thanos-compactor-6b7d445f99-f9fqx 
k get po -A
k logs -n monitoring thanos-compactor-6b7d445f99-f9fqx 
k logs -n monitoring thanos-storegateway-0 
k logs -n monitoring thanos-minio-77f75478c9-9xg2t 
vi openstack_installation.sh
mv openstack_installation.sh openstack_installation_tacker.sh
k get svc -A
k get po -n moninitoring
k get po -n monitoring
helm uninstall thanos -n monitoring
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
k get po -n monitoring
helm uninstall thanos -n monitoring
helm list -n monitoring
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos --version 8.0.0
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos --version 6.0.0
k get po -n monitoring
k get po -n monitoring -w
watch kubectl get po -n monitoring
k logs -n monitoring thanos-minio-7985dc97b5-89w5l minio 
k logs -n monitoring thanos-minio-7985dc97b5-89w5l
k logs -n monitoring thanos-compactor-547f766d7b-fx79w 
k logs -n monitoring thanos-storegateway-0 
watch kubectl get po -n monitoring
helm uninstall thanos -n monitoring
helm uninstall kube-prometheus -n monitoring
helm install kube-prometheus bitnami/kube-prometheus --set prometheus.thanos.create=true --set operator.service.type=ClusterIP --set prometheus.service.type=ClusterIP --set alertmanager.service.type=ClusterIP --set prometheus.thanos.service.type=NodePort -n monitoring --version 5.0.0
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos --version 6.0.0
k get po -n monitoring
k get po -n monitoring -w
k logs -n monitoring thanos-compactor-547f766d7b-8qgcm 
k get po -n monitoring -w
helm list -n monitoring
helm uninstall thanos -n monitoring
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos --version 5.0.0
helm list -n monitoring
k get po -n monitoring
k get po -n monitoring -w
watch kubectl get po -n monitoring
k logs -n monitoring thanos-storegateway-0 storegateway 
helm uninstall thanos -n monitoring
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos
k get po -n monitoring
k get po -n monitoring -w
helm uninstall thanos -n monitoring
k get po -A
helm install thanos --values values.yaml --namespace monitoring bitnami/thanos --version 5.3.0
k get svc -n monitoring
k get svc -A
kubeadm token create
openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //'
kubeadm version
k get no
k get no -w
k get no
clear
kubectl get no
clear
kubectl get nodes
clear
kubectl get nodes
clear
kubectl get nodes
clear
kubectl get no -o wide
ls
kubectl get po 
kubectl get svc
ls
kubectl get po -o wide
kubectl exec -it web-649f659989-d4cq6 --/bin/bash
kubectl exec -it web-649f659989-d4cq6 /bin/bash
kubectl get nodes
kubectl get po -A
kubectl get svc -A
kubectl get deploy -A
kubectl get po -A
kubectl delete pod thanos-storegateway-0 --grace-period=0 --force monitoring
kubectl delete pod thanos-ruler-0 --grace-period=0 --force monitoring
kubectl get po -A
kubectl delete pod --grace-period=0 --force --namespace monitoring thanos-storegateway-0
kubectl delete pod --grace-period=0 --force --namespace monitoring thanos-ruler-0
kubectl delete pod --grace-period=0 --force --namespace monitoring  thanos-query-frontend-747fb9686f-z58nf
kubectl delete pod --grace-period=0 --force --namespace monitoring thanos-query-687b5dfb7b-nldxm
kubectl delete pod --grace-period=0 --force --namespace monitoring thanos-minio-6f66dd6bb5-n2dpb
kubectl delete pod --grace-period=0 --force --namespace monitoring thanos-compactor-75b8458bd5-958bv
kubectl delete pod --grace-period=0 --force --namespace monitoring thanos-bucketweb-7c6c4d8c4f-sxsnt
kubectl delete pod --grace-period=0 --force --namespace monitoring prometheus-kube-prometheus-prometheus-0
kubectl delete pod --grace-period=0 --force --namespace monitoring kube-prometheus-operator-554bc7cbf-mw7q4
kubectl delete pod --grace-period=0 --force --namespace monitoring kube-prometheus-kube-state-metrics-784b878588-dsmsp
kubectl delete pod --grace-period=0 --force --namespace monitoring grafana-bbb44b647-xj2w4
kubectl delete pod --grace-period=0 --force --namespace monitoring alertmanager-kube-prometheus-alertmanager-0
kubectl delete pod --grace-period=0 --force --namespace monitoring kubefed-controller-manager-686b4d58bc-sl2gt
kubectl delete pod --grace-period=0 --force --namespace kube-federation-system kubefed-controller-manager-686b4d58bc-sl2gt
kubectl delete pod --grace-period=0 --force --namespace kube-federation-system kubefed-controller-manager-686b4d58bc-p9clw
kubectl delete pod --grace-period=0 --force --namespace kube-federation-system kubefed-admission-webhook-5c96c86688-tzmtf
kubectl delete pod --grace-period=0 --force --namespace kube-federation-system kubeview-85857844f4-mp52j
kubectl delete pod --grace-period=0 --force --namespace default kubeview-85857844f4-mp52j
kubectl get po -A
clear
ls
cd Pod/
ls
cd ..
ls
cd ..
ls
find / -name "DockerFile"
python3 ksk.py
pip3 install flask
apt install python3-pip
pip3 install flask
python3 ksk.py
pip3 install kubernetes
python3 ksk.py
pip3 install flask_cors
python3 ksk.py
vi templates/core.html 
python3 ksk.py
cat ksk.py 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/edge1.html 
vi templates/core.html 
python3 ksk.py
vi ksk.py 
python3 ksk.py
vi ksk.py 
python3 ksk.py
vi ksk.py 
python3 ksk.py
vi ksk.py 
vi templates/core.html 
cp templates/edge1.html templates/core.html 
vi templates/core.html 
python3 ksk.py
vi ksk.py 
kubectl config get-contexts
vi ksk.py 
python3 ksk.py
vi ksk.py 
cp templates/edge1.html templates/edge2.html 
cp templates/edge1.html templates/edge3.html 
python3 ksk.py
vi ksk.py 
python3 ksk.py
vi ksk.py 
python3 ksk.py
vi templates/edge1.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/edge1.html 
python3 ksk.py
vi templates/edge2.html 
vi templates/edge1.html 
vi templates/core.html 
vi ksk.py
python3 ksk.py
vi ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/edge3.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/edge1.html 
vi templates/core.html 
vi templates/edge1.html 
vi templates/edge2.html 
vi templates/edge3\.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/edge1.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
python3 ksk.py
vi templates/core.html 
vi templates/edge1.html 
vi templates/edge2.html 
k config get-contexts
ls
python3 ksk.py 
k config get-contexts -o wide
k config get-contexts
k get po -n demo
k get deploy -n demo
k get po -n demo\
k get po -n demo
k get federateddeployments.types.kubefed.io - A
k get federateddeployments.types.kubefed.io -A
k get federatedservices.types.kubefed.io -n demo
k delete federatedservices.types.kubefed.io demo-1 -n demo
k delete federateddeployments.types.kubefed.io demo-1 -n demo
k get federatednamespaces.types.kubefed.io 
k get federatednamespaces.types.kubefed.io -A
k delete federatednamespaces.types.kubefed.io demo -n demo 
k delete federatedservices.types.kubefed.io demo-1 -n demo
k delete federateddeployments.types.kubefed.io demo-1 -n demo
k delete federatednamespaces.types.kubefed.io demo -n demo
vi templates/edge1.html 
vi templates/edge2.html 
vi templates/edge3.html 
k get po -A
k get po
k get po -w
k get po
k get svc -A
k get po
k exec -it web-7898ccd68f-54qmb -- bash
k exec -it -c mysql web-7898ccd68f-54qmb -- bash
k get deploy
k delete web
k delete deploy web
k get po
k delete deploy web
k get po
k get po -w
k delete deploy web
python3 ksk.py 
netstat -tnlp | grep 5001
kill -9 31245
netstat -tnlp | grep 5001
kill -9 31250
netstat -tnlp | grep 5001
python3 ksk.py 
vi templates/edge3.html 
python3 ksk.py 
k get po -A
docker pull 59nezytic/tomcat:demo-1
k get federatedservice -A
k delete federatedservice demo
k delete federatedservice demo -n demo
k delete federateddeployment demo -n demo
k delete federatednamespaces demo -n demo
k delete federatedservice demo
k delete federatedservice demo -n demo
k delete federateddeployment demo -n demo
k delete federatednamespaces demo -n demo
k delete federatedservice demo -n demo
k delete federateddeployment demo -n demo
k delete federatednamespaces demo -n demo
k delete federatedservice demo -n demo
k delete federateddeployment demo -n demo
k delete federatednamespaces demo -n demo
vi templates/core.html 
python3 ksk.py 
vi templates/edge1.html 
vi templates/edge2.html 
vi templates/edge1.html 
vi templates/edge3.html 
python3 ksk.py 
k get po -n demo
k get po -n demo -w
watch kubectl get po -n demo
k get svc -A
watch kubectl get po -n demo
vi templates/edge3.html 
k get po -A
k exec -it -n demo demo-58f6c4b7f5-52zn5 -- bash
k get no -o wide
ls
python3 ksk.py 
ls
vi ksk.py 
cd static/
ls
clear
history
ls
vim demo
