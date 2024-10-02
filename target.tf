resource "aws_lb_target_group" "ecs-project-target" {
  name     = "ecs-project-target"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.mini-prod-vpc.id
  target_type = "ip"

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
    matcher             = "200"
  }
}
resource "aws_lb_target_group_attachment" "ecs-target" {
  target_group_arn = aws_lb_target_group.ecs-project-target.arn
  target_id        = "70.0.1.5"
  port             = 80
}