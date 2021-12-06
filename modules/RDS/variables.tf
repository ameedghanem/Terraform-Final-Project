variable "db_storage" {
  type        = string
  default     = "15"
  description = "The desired database instance's storage"
}

variable "max_db_storage" {
  type        = string
  default     = "20"
  description = "The maximum desired database instance's storage." # for autoscalling
}

variable "engine_type" {
  type        = string
  default     = "mysql"
  description = "The type of the database instance's engine"
}

variable "engin_v" {
  type        = string
  default     = "8.0.26"
  description = "The version of the database's engine"
}

variable "instance_cls" {
  type        = string
  default     = "db.t2.micro"
  description = "The class of the database instance"
}

variable "db_name" {
  type        = string
  default     = "mysql_db"
  description = "The name of the database instance"
}

variable "db_username" {
  type        = string
  default     = "user1"
  description = "The username to login to the databse instance"
}

variable "db_password" {
  type        = string
  default     = "user1"
  description = "The password to login to the databse instance"
}

variable "db_group_name" {
  type        = string
  default     = "rds_mysql_gn"
  description = "The name of the database's group"
}

variable "replicate_db" {
  type        = string
  default     = ""
  description = "the identifier of the rds instance to replicate"
}

variable "multiple_az" {
  type        = bool
  description = "speicifies whether the rds instance is a mutli-az or not"
}