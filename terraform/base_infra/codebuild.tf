# codebuild.tf

resource "aws_codebuild_project" "nodejs_codebuild_project" {
  name          = var.nodejs_codebuild_project_name
  description   = var.nodejs_codebuild_project_description
  service_role  = aws_iam_role.codebuild_role.arn

  source {
    type            = "CODECOMMIT"
    location        = "https://git-codecommit.${var.region}.amazonaws.com/v1/repos/${var.repository_name}"  
    buildspec       = "buildspec.yml"
  }

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type                = var.compute_type
    image                       = var.build_image
    type                        = "LINUX_CONTAINER"
    privileged_mode             = true 

    
  }
}


