variable "lb_name" {
  type        = string
  description = "The load balancers' name"
}

variable "is_internal" {
  type        = bool
  description = "External/Internal load balancer"
}

variable "lb_type" {
  type        = string
  default     = "application"
  description = "The type of load balancer we wish to create"
}

variable "lb_subnet_ids" {
  type        = set(string)
  description = "The ids of default subnets"
}

variable "sg_id" {
  type        = string
  description = "The security group id"
}

variable "port" {
  type        = string
  default     = "80"
  description = "The port number"
}

variable "protocol" {
  type        = string
  default     = "HTTP"
  description = "The application protoocl"
}

variable "tg_arn" {
  type        = string
  description = "description"
}

variable "routing_type" {
  type        = string
  default     = "forward"
  description = "Type of routing action"
}
