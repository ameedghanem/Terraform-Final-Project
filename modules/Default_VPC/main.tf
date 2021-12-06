# choose the default vpc
data "aws_vpc" "default_vpc" {
  default = true
}

# get subnet ids in the default VPC
data "aws_subnet_ids" "default_subnet" {
  vpc_id = data.aws_vpc.default_vpc.id
  #availability_zone = var.subnet_az
}