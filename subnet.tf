resource "aws_subnet" "vpc_prod_subnet" {
    count = 2
    vpc_id = aws_vpc.mini-prod-vpc.id
   cidr_block =var.vpc_prod_subnet[count.index]
   availability_zone = var.az[count.index]
   tags = {
     Name="prod-subnet-az ${count.index + 1}"
   }
lifecycle {
    ignore_changes = all 
  }
  
}