provider "aws" {
region = "ap-south-1"
profile = "default"

}
terraform {
  backend "remote" {
    organization = "sanjay-dev"

    workspaces {
      name = "terraform-atlantis"
    }
  }
}

resource "aws_instance" "web" {
ami = "ami-0a1235697f4afa8a4" 
instance_type = "t2.micro"

tags = {
Name = "terraform-atlantis-cloud"
}
}
