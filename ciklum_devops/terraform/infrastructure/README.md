# Infrastructure TF configurations

This TF confirations deploys VPC and SG for `SAMPLE` project

## Usage

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| private\_subnets | Private Subnets | list | `<list>` | no |
| project\_name | Project name which used as a common label | string | `"sample_project"` | no |
| public\_subnets | Private Subnets | list | `<list>` | no |
| region | Default AWS region | string | `"us-east-1"` | no |
| tags | Tags for resources | map | `<map>` | no |
| vpc\_cidr | CIDR for vpc | string | `"10.0.0.0/16"` | no |
| vpc\_name | Sample VPC for labs | string | `"sample"` | no |

## Outputs

| Name | Description |
|------|-------------|
| azs | Availability zones |
| private\_subnets | A list of the IDs of the private subnets |
| public\_subnets | A list of the IDs of the public subnets |
| ssh\_sg | Security group for ssh access |
| vpc\_id | The ID of the created VPC |
