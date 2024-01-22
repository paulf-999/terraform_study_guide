# The terraform {} block contains Terraform settings, including the required providers Terraform will use to provision your infrastructure
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# The provider block configures the specified provider
provider "aws" {
  region = "eu-west-1"
}

# Use resource blocks to define components of your infrastructure
resource "aws_instance" "app_server" {
  ami           = "ami-0905a3c97561e0b69"
  instance_type = "t2.micro"

  # You can ovveride this value at the command line using the arg 'var', e.g.:
  # terraform apply -var "instance_name=YetAnotherName"
  tags = {
    Name = var.instance_name
  }
}
