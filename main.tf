terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_security_group" "example" {
  name = "demo"
  description = "be insecure"
  vpc_id = "vpc-123456"
  
  ingress {
    description = "don't do this"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
