# --- main/root ---
resource "aws_vpc" "vpc_validation" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "sg_validation" {
  name        = "validation_test"
  vpc_id      = aws_vpc.vpc_validation.id

  ingress {
    description = "allow only HTTPS connection"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.vpc_validation.cidr_block]
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