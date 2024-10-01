resource "aws_internet_gateway" "igw-prod-vpc" {
    vpc_id = aws_vpc.mini-prod-vpc.id
    tags = {
      Name= "igw-prod-vpc"
    }
  lifecycle {
    ignore_changes = all
  }
}