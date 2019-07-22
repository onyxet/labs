variable "project_name" {
  default     = "sample_project"
  description = "Project name which used as a common label"
}

variable "vpc_name" {
  default     = "sample"
  description = "Sample VPC for labs"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "CIDR for vpc"
}

variable "region" {
  default     = "us-east-1"
  description = "Default AWS region"
}

variable "private_subnets" {
  type        = "list"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  description = "Private Subnets"
}

variable "public_subnets" {
  type        = "list"
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  description = "Private Subnets"
}

variable "tags" {
  description = "Tags for resources"

  default = {
    Environment = "DEV"
    Project     = "Sample"
    Owned       = "Terraform"
  }
}
