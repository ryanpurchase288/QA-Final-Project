#!/bin/bash
cd terraform/Kubernetes/environments/live
terraform init 
terraform plan --var-file=live.tfvars -out=liveplan
terraform apply "liveplan"
az aks get-credentials --resource-group liveResources --name aks_cluster --overwrite-existing
cd ../../../../