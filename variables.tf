variable "accessKey" {
  type        = string
  description = "The access key of your aws user."
}

variable "secretKey" {
  type        = string
  description = "The secret key of your aws user"
}

variable "instance_count" {
  default = "4"
}

variable "webserver_tags" {
  type = list
  default = ["webserver-1", "webserver-2", "webserver-3", "webserver-4"]
}

variable "appserver_tags" {
  type = list
  default = ["appserver-1", "appserver-2", "appserver-3", "appserver-4"]
}

variable "instance_type" {
  default = "t2.micro"
}