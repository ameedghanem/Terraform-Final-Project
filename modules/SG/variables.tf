variable "http" {
  type        = number
  default     = 80
  description = "HTTP port"
}

variable "https" {
  type        = number
  default     = 443
  description = "HTTPS port"
}

variable "ssh" {
  type        = number
  default     = 22
  description = "SSH port"
}

variable l4_protocol {
  type        = string
  default     = "tcp"
  description = "The 4th layer's protcol"
}

variable "cidr_blocks" {
  type        = string
  default     = "0.0.0.0/0"
  description = "CIDR block that contains all ip's"
}