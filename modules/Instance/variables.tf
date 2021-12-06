variable "ami_name" {
  type        = string
  default     = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
  description = "The image name to be used to create the instance"
}

variable "virtualization_type" {
  type        = string
  default     = "hvm"
  description = "The virtualization type"
}

variable "os_owners" {
  type        = string
  default     = "099720109477" # Cannonical
  description = "The owners of the required os"
}

variable "availability_zones" {
  type = list
  description = "The AZs to create the instances"
  default = ["eu-west-1a", "eu-west-1b"]
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The type of the instance to be created"
}

variable "instance_count" {
  type        = string
  default     = "2"
  description = "The count of instances to be created"
}

variable "prefix_name" {
  type        = string
  description = "The prefix of each instance name"
}

