resource "aws_lb" "project-lb" {
     name               = "ecs-project-lb"
     internal           = false
    load_balancer_type = "application"
     enable_deletion_protection = false
     security_groups = [ aws_security_group.mini-project-sg.id ]
     subnets = [ aws_subnet.vpc_prod_subnet[3].id,aws_subnet.vpc_prod_subnet[4].id ]
     
    
  
}
resource "aws_route53_record" "www" {
  zone_id = "Z0534466PZH9OPTCRBP8"
  name    = "krmkhub.in"
  type    = "A"

  alias {
    name                   = aws_lb.project-lb.dns_name
    zone_id                = "Z0534466PZH9OPTCRBP8"
    evaluate_target_health = true
  }
}