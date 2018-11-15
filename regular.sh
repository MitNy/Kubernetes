#!/bin/sh

# 스크립트 경로에서 실행
SCRIPTPATH=$( cd "$(dirname "$0")" ; pwd )
mkdir -p ./.kube
echo "mijin0314" | sudo -S cp -i /etc/kubernetes/admin.conf $SCRIPTPATH"/.kube/config"
echo "mijin0314" | sudo -S chown $(id -u):$(id -g) $SCRIPTPATH"/.kube/config"
kubectl apply -f https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n') # 네트워크 배포 
kubectl get nodes

