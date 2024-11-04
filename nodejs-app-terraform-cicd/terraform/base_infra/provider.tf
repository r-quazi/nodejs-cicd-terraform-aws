# main.tf
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.45.0"
    }
  }
}


# main.tf
provider "aws" {
  region  = var.region
 
}
