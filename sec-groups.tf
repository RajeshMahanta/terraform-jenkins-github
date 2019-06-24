# AWS App Security Group
resource "aws_security_group" "app" {
  name        = "app-ec2-sg"
  description = "app security group"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.app_ingress_cidrs}"]
    description = "Allow HTTP from ALB"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = "${var.ec2_egress_cidrs}"
    description = "Outbound connection "
  }


}
