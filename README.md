## Terraform Final Project
![](https://github.com/ameedghanem/Terraform-Final-Project/blob/main/logo/AWS_TF%20Final%20Task.jpg)

## About
This is a HCL code that sets up an infrastructre as in the above image.
I've implemented fo this purpose the follownig module:
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
    $ terraform apply -var="accessKey=<your access key>" -var="secretKey=<you secret key>"
