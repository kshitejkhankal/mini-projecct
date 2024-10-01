resource "aws_instance" "prod-instance" {
    
    ami =  "ami-0522ab6e1ddcc7055"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    security_groups = [ aws_security_group.mini-project-sg.id ]

    count = 3
    subnet_id = aws_subnet.vpc_prod_subnet[0].id
       key_name = "IAM"
       tags = {
         Name= "terraform-ec2"
       }
       user_data =file("./install.sh")
       lifecycle {
         ignore_changes = all 
       }
  
}
