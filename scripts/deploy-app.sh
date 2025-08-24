#!/bin/bash

# Simple script to deploy app to EKS
APP_NAME="eks-cluster-demo-app"
IMAGE="dockerhub489/demo-cluster:v1"

echo "Deploying $APP_NAME"

kubectl create deployment $APP_NAME --image=$IMAGE --replicas=2
kubectl expose deployment $APP_NAME --port=3000 --target-port=3000 --name=${APP_NAME}-service --type=ClusterIP

echo "Deployment done!"
kubectl get pods
kubectl get svc


