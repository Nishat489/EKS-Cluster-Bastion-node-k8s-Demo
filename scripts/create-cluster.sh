#!/bin/bash

# Simple script to create EKS cluster
CLUSTER_NAME="eks-cluster-demo-app"
REGION="us-east-1"

echo "Creating EKS cluster: $CLUSTER_NAME"

eksctl create cluster \
  --name $CLUSTER_NAME \
  --region $REGION \
  --nodegroup-name demo-nodes \
  --node-type t3.medium \
  --nodes 3

echo "Cluster created!"
kubectl get nodes
