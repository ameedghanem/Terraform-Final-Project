# Create a db instance
resource "aws_db_instance" "instance" {
  allocated_storage    = var.db_storage
  max_allocated_storage = var.max_db_storage
  engine               = var.engine_type
  engine_version       = var.engin_v
  instance_class       = var.instance_cls
  name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  #parameter_group_name = var.db_group_name
  #replicate_source_db = var.replicate_db
  multi_az             = var.multiple_az
  skip_final_snapshot  = true
}