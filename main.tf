# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

# Using a single workspace:
terraform {
  backend "remote" {
    organization = "alan-devops"

    workspaces {
      name = "devops"
    }
  }
}
