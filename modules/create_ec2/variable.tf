variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key name to access the instance"
  type        = string
}

variable "name" {
  description = "Name tag for the instance"
  type        = string
  default     = "my-ec2-instance"
}

variable "environment" {
  description = "Environment (dev/prod)"
  type        = string
  default     = "dev"
}

variable "extra_tags" {
  description = "Additional tags as a map"
  type        = map(string)
  default     = {}
}

variable "security_group_ids" {
  description = "List of security group IDs to attach"
  type        = list(string)
  default     = []
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance into"
  type        = string
  default     = ""
}
