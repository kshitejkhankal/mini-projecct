resource "aws_lb_listener" "lb-listner" {
  load_balancer_arn = aws_lb.project-lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ecs-project-target.arn
  }
}