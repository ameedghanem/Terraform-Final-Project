provider "aws" {
    region = "eu-west-1" 

    access_key = var.accessKey
    secret_key = var.secretKey
}

# getting the default vpc, subnets
module "default_vpc" {
  source = "./modules/Default_VPC/"
}

# creaing the security group
module "my_sg" {
  source = "./modules/SG/"
}


# create 4 web servers, two of them in Az-a while the rest in AZ-b
module "web_servers" {
  source = "./modules/Instance/"

  instance_count = "4"
  prefix_name = "webserver"
}

# create 4 app servers, two of them in Az-a while the rest in AZ-b
module "app_servers" {
  source = "./modules/Instance/"

  instance_count = "4"
  prefix_name = "appserver"
}

# create a tg and attach appservers to it
module "in_lb_tg" {
  source = "./modules/TG/"

  vpc_id = module.default_vpc.default_vpc_id
  instances = module.app_servers.instances
  tg_name = "internal-lb-tg"
}

# create the internal load balancer
module "internal_lb" {
  source = "./modules/LB/"

  is_internal = true
  lb_name = "in-lb"
  sg_id = module.my_sg.new_sg
  lb_subnet_ids = module.default_vpc.default_subnet_id
  tg_arn = module.in_lb_tg.tg_arn
}

# create a tg and attach webservers to it
module "ex_lb_tg" {
  source = "./modules/TG/"

  vpc_id = module.default_vpc.default_vpc_id
  instances = module.web_servers.instances
  tg_name = "external-lb-tg"
}

# create the external load balancer
module "external_lb" {
  source = "./modules/LB/"

  is_internal = false
  lb_name = "ex-lb"
  sg_id = module.my_sg.new_sg
  lb_subnet_ids = module.default_vpc.default_subnet_id
  tg_arn = module.ex_lb_tg.tg_arn
}

module "create_s3_bucket"{
  source = "./modules/S3_BUCKET/"
}

module "create_rds"{
  source = "./modules/RDS/"

  multiple_az = true
  db_username = "mainuser"
  db_password = "12345678a"
}
