# Building GKE Cluster

This code is responble for build a GKE Cluster with 3 nodes pool. Please follow these steps below:   

1- Create a GCP account 

2- Create a new project or use the default

3- Enable Compute Engine and Kubernetes Engine API

4- Create a service account with editor permissions and download the key (.json file). We will use this SA to build our env

5- Create a bucket on GCP to store the TF state on GCP

6- Fork this repo https://github.com/ralff2208/infra-api

7- Change project_id variable on terraform.tfvars for your own project id

8- Change the name of bucket on backend.tf for your bucket name that you just created (step 4)

9- Create a secret on github actions called GOOGLE_CREDENTIALS with the content in service account key file (.json)

10- Run git actions pipeline for build GKE cluster