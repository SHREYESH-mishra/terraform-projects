






resource "aws_vpc" "primary_vpc" {
  cidr_block       = "10.0.0.0/16"
  provider = aws.primary
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}