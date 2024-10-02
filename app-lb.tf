resource "aws_lb" "project-lb" {
     name               = "ecs-project-lb"
     internal           = false
    load_balancer_type = "application"
     enable_deletion_protection = false
     security_groups = [ aws_security_group.mini-project-sg.id ]
     subnets = [ aws_subnet.vpc_prod_subnet[0].id,aws_subnet.vpc_prod_subnet[1].id ]
     
    
  
}
