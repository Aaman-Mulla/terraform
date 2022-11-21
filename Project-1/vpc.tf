#Creating a vpc

resource "aws_vpc" "prod" {
  cidr_block = "10.0.0.0/16"
}