output "id" {
  description = "VPC ID."
  value       = module.vpc.vpc_id
}

output "cidr_block" {
  description = "The CIDR block of the VPC."
  value       = module.vpc.vpc_cidr_block
}

output "private_subnets" {
  description = "List of private subnet IDs."
  value       = module.vpc.private_subnets
}

output "private_subnets_cidr_blocks" {
  description = "List of cidr_blocks of private subnets."
  value       = module.vpc.private_subnets_cidr_blocks
}

output "public_subnets" {
  description = "List of public subnet IDs."
  value       = module.vpc.public_subnets
}

output "public_subnets_cidr_blocks" {
  description = "List of cidr_blocks of public subnets."
  value       = module.vpc.public_subnets_cidr_blocks
}

output "database_subnets" {
  description = "List of database subnet IDs."
  value       = try(module.vpc.database_subnets)
}

output "azs" {
  description = "List of Availability Zones."
  value       = local.azs
}
