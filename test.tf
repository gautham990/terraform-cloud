terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region = "ap-southeast-1"
}
resource "aws_instance" "web1" {
  ami           = "ami-03faaf9cde2b38e9f"
  instance_type = "t2.micro"
  tags = {
    Name = "webserver1"
  }
}
resource "aws_instance" "web2" {
  ami           = "ami-03faaf9cde2b38e9f"
  instance_type = "t2.micro"
  #  tags = {
  #    Name = "webserver2"
  #  } 
}
