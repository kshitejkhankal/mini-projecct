# resource "aws_iam_role" "python-project-role" {
#   name = "python-project-role"


#   assume_role_policy = jsonencode({
   
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Effect": "Allow",
#             "Action": [
#                 "ecr:GetAuthorizationToken",
#                 "ecr:BatchCheckLayerAvailability",
#                 "ecr:GetDownloadUrlForLayer",
#                 "ecr:BatchGetImage",
#                 "logs:CreateLogStream",
#                 "logs:PutLogEvents"
#             ],
#             "Resource": "*"
#         }
#     ]

#   })

#   tags = {
#     Name = "python-project-role"
#   }
# }