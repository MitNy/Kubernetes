#!/bin/sh

# 스크립트 경로에서 실행
mkdir -p ./.kube
sudo cp -i /etc/kubernetes/admin.conf ./.kube/config
sudo chown $(id -u):$(id -g) ./.kube/config
kubectl apply -f https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n') # 네트워크 배포 
kubectl get nodes
