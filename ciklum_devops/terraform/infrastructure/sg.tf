module "ssh" {
  source = "git@github.com:terraform-aws-modules/terraform-aws-security-group.git?ref=v2.17.0"

  name                = "ssh"
  description         = "Security group for ssh access"
  vpc_id              = "${data.terraform_remote_state.global.vpc_id}"
  ingress_cidr_blocks = ["0.0.0.0/0", "::/0"]

  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "-1"
      description = "ssh"
      cidr_blocks = "0.0.0.0/0"
    },
  ]

  egress_cidr_blocks = ["0.0.0.0/0", "::/0"]

  egress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Service name"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}
