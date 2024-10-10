resource "aws_ecs_task_definition" "python-project" {
  family                   = "python-project"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = 1024
  memory                   = 2048
   execution_role_arn = aws_iam_role.ecs_task_execution_role.arn
  task_role_arn = aws_iam_role.ecs_task_execution_role.arn
  
  container_definitions    = <<TASK_DEFINITION
[
  {
    "name": "python-project-container",
    "image": "${aws_ecr_repository.python-project.repository_url}:12",
    "cpu": 1024,
    "memory": 2048,
    "essential": true,
    "portMappings": [
        {
          "containerPort": 80,
          "hostPort": 80
          
          
          
        }
      ]
    
     
   }
 ]
TASK_DEFINITION

  # runtime_platform {
  #   # operating_system_family = "Linux/X86_64"
  #   cpu_architecture        = "Linux/X86_64"

  # }
}
# "arn:aws:iam::992382601924:role/fusion-dev-frontend-role"