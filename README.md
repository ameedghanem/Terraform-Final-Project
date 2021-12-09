## Terraform Final Project
![](https://github.com/ameedghanem/Terraform-Final-Project/blob/main/logo/AWS_TF%20Final%20Task.jpg)

## About
This is a HCL code that sets up an infrastructre as in the above image.
I've implemented for this purpose the follownig modules:
- Instance
- Load_Balancer
- S3_Bucket
- RDS
- Security_Group
- Target_Group

## Prerequesties
    terraform

## Installation
    $ git clone https://github.com/ameedghanem/Terraform-Final-Project.git
      ...
    $ cd Terraform-Final-Project/

## Deployment
    $ terraform init
    $ terraform apply -var="accessKey=<your access key>" -var="secretKey=<you secret key>"
