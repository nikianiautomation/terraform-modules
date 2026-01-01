provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "ec2_instance" {
    ami = "ami-0b09ffb6d8b58ca91"
    instance_type ="t3.micro"
    key_name = "31-12-2025"
    vpc_security_group_ids = ["sg-08bae5936dc4403be"]
    tags = {
        name = "ec2_instance"
    }
}