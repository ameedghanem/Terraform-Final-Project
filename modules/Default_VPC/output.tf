output "default_vpc_id" {
  value       = data.aws_vpc.default_vpc.id
  description = "The id of the default vpc"
}

output "default_subnet_id" {
  value       = data.aws_subnet_ids.default_subnet.ids
  description = "The ids of the default subnet"
}