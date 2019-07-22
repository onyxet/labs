output "vpc_id" {
  description = "The ID of the created VPC"
  value       = "${module.vpc.vpc_id}"
}

output "private_subnets" {
  description = "A list of the IDs of the private subnets"
  value       = "${module.vpc.private_subnets}"
}

output "public_subnets" {
  description = "A list of the IDs of the public subnets"
  value       = "${module.vpc.public_subnets}"
}

output "ssh_sg" {
  description = "Security group for ssh access"
  value       = "${module.ssh.this_security_group_id}"
}

output "azs" {
  value       = "${module.vpc.azs}"
  description = "Availability zones"
}
