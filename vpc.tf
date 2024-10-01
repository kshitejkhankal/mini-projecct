resource "aws_vpc" "mini-prod-vpc" {
    cidr_block = var.vpc_cidr_block
  tags = {
    "Name"="mini-prod-vpc"
  }
  lifecycle {
    ignore_changes = all
  }
}
