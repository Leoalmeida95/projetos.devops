provider "aws" {
    versionm = "~> 2.0"
    region = "us-east-1"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-026c8acd92718196b"
    instance_type = "t2.mico"
    key_name = "terraform-aws"
    tags ={
        Name = "dev${count.index}"
    }
    vpc_security_group_ids = ["sg-0494f94ad5a9858c"]
}

resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["191.45.92.202/32"]
  }

    tags ={
        Name = "ssh"
    }
}