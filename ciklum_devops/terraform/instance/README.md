# Main TF Config

This TF configs deploys instance from prebuilt AMI and Classic Balancer with TCP:22 listener ot top of it

## Usage

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ami\_id | AMI ID to be used for sample instance | string | `"ami-078c6cc18c20b8ac8"` | no |
| instance\_type | Instance type | string | `"t2.medium"` | no |
| key\_name | SSH keypair name | string | `"sample_project"` | no |
| project\_name | Project name | string | `"sample-project"` | no |
| tags | Tags for resources | map | `<map>` | no |
