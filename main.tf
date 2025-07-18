provider "aws" {
region = "ap-south-1"
profile = "default"

}


terraform {
backend "s3" {
bucket = "mycompany-terraform-backend123"
key = "atlantis/terraform.tfstate"
region = "ap-south-1"
profile = "default"

}
}
resource "aws_instance" "web" {
ami = "ami-0a1235697f4afa8a4" # Replace with a valid AMI ID
instance_type = "t2.micro"

tags = {
Name = "terraform-atlantis"
}
}