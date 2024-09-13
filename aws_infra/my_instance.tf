resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("PATH FOR your SSH key")
}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}
resource "aws_security_group" "sg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    description = "Allow SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "my-instance" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  count           = var.instance_count
  key_name        = aws_key_pair.deployer.id
  security_groups = [aws_security_group.sg.name]
  tags = {
    Name = var.instance_name
  }
}
