resource "aws_instance" "this" {
  ami                    = "${var.ami_id}"
  instance_type          = "${var.instance_type}"
  key_name               = "${var.key_name}"
  vpc_security_group_ids = ["${data.terraform_remote_state.global.ssh_sg}"]
  subnet_id              = "${element(data.terraform_remote_state.global.public_subnets, 0)}"
  tags                   = "${var.tags}"
}

resource "aws_elb" "this" {
  name       = "${var.project_name}"
  subnets    = ["${data.terraform_remote_state.global.public_subnets}"]
  depends_on = ["aws_instance.this"]

  listener {
    instance_port     = 22
    instance_protocol = "tcp"
    lb_port           = 22
    lb_protocol       = "tcp"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "TCP:22"
    interval            = 30
  }

  instances                   = ["${aws_instance.this.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = "${var.tags}"
}
