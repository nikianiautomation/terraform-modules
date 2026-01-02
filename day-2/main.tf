provider "aws" {
  region = "us-east-1"
}


module "ec2_instance" {
    source = "./modules/ec2-instances"
    ami_value= "ami-08d7aabbb50c2c24e"
    instance_type_value= "t2.micro"
    subnet_id_value= "subnet-00c3f040495339a89" 
}