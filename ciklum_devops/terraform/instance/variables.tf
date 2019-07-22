variable "ami_id" {
  default     = "ami-078c6cc18c20b8ac8"
  description = "AMI ID to be used for sample instance"
}

variable "instance_type" {
  default     = "t2.medium"
  description = "Instance type"
}

variable "key_name" {
  default     = "sample_project"
  description = "SSH keypair name"
}

variable "project_name" {
  default     = "sample-project"
  description = "Project name"
}

variable "tags" {
  description = "Tags for resources"

  default = {
    Name        = "Sample_project"
    Environment = "DEV"
    Project     = "Sample"
    Owned       = "Terraform"
  }
}
