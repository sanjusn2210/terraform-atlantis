# Terraform EC2 Module

This module launches an AWS EC2 instance.

## Usage

```hcl
module "ec2_instance" {
  source        = "./create-ec2"
  ami_id        = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  key_name      = "my-key"
  name          = "dev-ec2"
  environment   = "dev"
  subnet_id     = "subnet-0123456789abcdef0"
  security_group_ids = ["sg-0123456789abcdef0"]
}
