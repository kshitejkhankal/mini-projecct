resource "aws_ecr_repository" "python-project" {
    name = "python-project"
    image_tag_mutability = "MUTABLE"
    tags = {
      Name = "python-project"
    }
  
}