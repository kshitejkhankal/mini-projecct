resource "aws_ecs_service" "ecs-project-ecs" {
  name            = "ecs-project-ecs"
  cluster         = aws_ecs_cluster.python-project-cluster.id
  task_definition = aws_ecs_task_definition.python-project.arn
  desired_count   = 1
  launch_type     = "FARGATE"
  

  
  network_configuration {
    
    subnets         = [aws_subnet.vpc_prod_subnet[0].id,aws_subnet.vpc_prod_subnet[1].id,aws_subnet.vpc_prod_subnet[2].id]
    security_groups = [aws_security_group.mini-project-sg.id]
  }
  
      load_balancer {
    target_group_arn = aws_lb_target_group.ecs-project-target.arn
    container_name   = "python-project-container"
    container_port   = 80
    
    
  
  }
  depends_on = [ aws_lb_listener.lb-listner ]
  
}
