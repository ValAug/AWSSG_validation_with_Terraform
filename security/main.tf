# --- main/sec ---
resource "aws_vpc" "vpc_validation" {
  cidr_block = var.cidr
}

resource "aws_security_group" "sg_validation" {
  name   = "validation_test"
  vpc_id = aws_vpc.vpc_validation.id

  ingress {
    description = "allow only HTTPS connection"
    from_port   = var.https_from
    to_port     = var.https_to
    protocol    = var.prot
    cidr_blocks = [aws_vpc.vpc_validation.cidr_block]
  }

  ingress {

    from_port   = var.ssh_from
    to_port     = var.ssh_to
    protocol    = var.prot
    cidr_blocks = [var.confidential_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "validation_test"
  }
}