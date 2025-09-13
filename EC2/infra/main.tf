resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
#   public_key = var.key_value
public_key = file("automation_key.pub")
}

resource "aws_default_vpc" "aws_vpc" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_security_group" "security_group" {
  name = var.sg_name 
  description = var.sg_description
  vpc_id = aws_default_vpc.aws_vpc.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "SSH"
  }

    ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "HTTP"
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1" # Allowing all traffic to go out of the instance
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "Outbound Rules"
  }

  tags = {
    Name = var.sg_name
  }
}

resource "aws_instance" "my_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  security_groups = [ aws_security_group.security_group.name ]

  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
  }

  tags = {
    Name = var.ec2_name
  }
}