provider "aws" {
    versionm = "~> 2.0"
    region = "us-east-1"
}

resource "aws_instance" "dev" {
    ami = " ami-026c8acd92718196b"
    instance_type = "t2.mico"
    key_name = "terraform-aws"
}