provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "my_ec2_instance" {
    count = 2
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.micro"
    tags = {
        name = "Terraform-main"
    }
  
}