variable "vpc_id" {
  type        = string
  description = "The id of the relevant vpc"
}

variable "protocol" {
  type        = string
  default     = "HTTP"
  description = "description"
}

variable "port" {
  type        = string
  default     = "80"
  description = "description"
}

variable "instances" {
  type = any
  description = "the instances to attach to the target group"
}

variable "tg_name" {
  type = string
  description = "the name of the target group"
}