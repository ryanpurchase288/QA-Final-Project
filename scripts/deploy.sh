#!/bin/bash
cd ~/QA-Final-Project/kubernetes
kubectl apply -f database/database.yaml
kubectl apply -f back-end/backend.yaml
kubectl apply -f front-end/fontend.yaml
kubectl apply -f nginx/nginx.yaml