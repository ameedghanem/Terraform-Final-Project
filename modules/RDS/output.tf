output "db_instance_id" {
  value       = aws_db_instance.instance.id
  description = "The id of the newly created DB instance"
}
