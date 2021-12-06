## Terraform Project
    ![](https://github.com/ameedghanem/Terraform%20Project/blob/main/logo/logo.png)

## About
This is a HCL code that sets up an infrastructre as in the above image.
I've implemented fo this purpose the follownig module:
- Instance
- Load_Balancer
- S3_Bucket
- RDS
- Security_Group

## Prerequesties
    terraform

## Installation
    $ git clone https://github.com/ameedghanem/Terraform_Project.git
      ...
    $ cd Terraform_Project/

## Deployment
    $ terraform apply -var="accessKey=<your access key>" -var="secretKey=<you secret key>"