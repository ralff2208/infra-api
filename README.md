# Building a GKE Cluster

This code is responble for build a GKE Cluster with 3 nodes pool. Please follow these steps below:   

## Step by Step to run this terraform 

1- Create a GCP account 

2- Create a new project or use the default

3- Enable **Compute Engine** and **Kubernetes Engine API**

4- Create a **service account** with editor permissions and download the key (.json file). We will use this SA to build our GKE Cluster

5- Create a bucket on GCP to store the TF state on GCP

6- Fork this repo https://github.com/ralff2208/infra-api

7- Change **project_id** variable on **terraform.tfvars** for your own project id

8- Change the **name** of bucket on **backend.tf** file for your bucket name that you just created (step 5)

9- Create a secret on github actions called **GOOGLE_CREDENTIALS** with the content in service account key file (.json)

10- Go to git actions repo and select **Terraform build GKE** workflow 

11- Click on Run Workflow, choose branch master and click again in Run Workflow


## Monitoring 
For monitoring the Cluster, nodes and pods, we are using monitoring tool from GCP: https://console.cloud.google.com/monitoring/dashboards/resourceList/kubernetes

## Logging
For logging, we are using the logging tool from GPC: https://console.cloud.google.com/logs/dashboard

## Destroy GKE Cluster 

1- Go to git actions repo and select **Terraform destroy cluster GKE** workflow

2- Click on Run Workflow, choose branch master and click again in Run Workflow
