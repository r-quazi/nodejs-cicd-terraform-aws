# Get AWS account ID
data "aws_caller_identity" "current" {}

# Get current AWS region
data "aws_region" "current" {}






# CodePipeline
resource "aws_codepipeline" "nodejs_pipeline" {
  name     = var.pipeline_name
  role_arn = aws_iam_role.codepipeline_role.arn

  artifact_store {
    location = aws_s3_bucket.codepipeline_bucket.id
    type     = "S3"
  }

  stage {
    name = "Source"
    action {
      name             = "Source"
      category         = "Source"
      owner            = "AWS"
      provider         = "CodeCommit"
      version          = "1"
      output_artifacts = ["source_output"]
      run_order        = 1

      configuration = {
        RepositoryName       = "nodejs-codecommit-repo"
        BranchName          = "main"
        PollForSourceChanges = false
        OutputArtifactFormat = "CODE_ZIP"
      }
    }
  }

  stage {
    name = "Build"
    action {
      name             = "Build"
      category         = "Build"
      owner            = "AWS"
      provider         = "CodeBuild"
      input_artifacts  = ["source_output"]
      output_artifacts = ["build_output"]
      version          = "1"
      run_order        = 1

      configuration = {
        ProjectName = "nodejs_codebuild"
      }
    }
  }

  stage {
    name = "Deploy"
    action {
      name            = "Deploy"
      category        = "Deploy"
      owner           = "AWS"
      provider        = "ECS"
      input_artifacts = ["build_output"]
      version         = "1"
      run_order       = 1

      configuration = {
        ClusterName = "nodejs_ecs_cluster"
        ServiceName = "nodejs_ecs_service"
        FileName    = "imagedefinitions.json"
      }
    }
  }
}

