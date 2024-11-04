# Default VPC
resource "aws_default_vpc" "default_vpc" {}

# Default Subnets
resource "aws_default_subnet" "default_subnet_a" {
  availability_zone = var.availability_zone_a
}

resource "aws_default_subnet" "default_subnet_b" {
  availability_zone = var.availability_zone_b
}