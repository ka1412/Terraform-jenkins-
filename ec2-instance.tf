terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}


resource "aws_instance" "my-ec2-vm_ubuntu" {
  ami                    = "ami-0c7217cdde317cfec"
  instance_type          = "t3.medium"
  count                  = 2
  tags = {
    "Name" = "ci-cd"
  }
}
