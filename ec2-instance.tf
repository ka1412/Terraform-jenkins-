terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "ap-south-1"
}


resource "aws_instance" "my-ec2-vm_ubuntu" {
  ami                    = "ami-0a7cf821b91bcccbc"
  instance_type          = "t2.micro"
  count                  = 2
  tags = {
    "Name" = "ci-cd"
  }
}
