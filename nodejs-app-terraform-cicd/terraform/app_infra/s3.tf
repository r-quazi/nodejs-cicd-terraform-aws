# Create S3 Bucket for CodePipeline artifacts
resource "aws_s3_bucket" "codepipeline_bucket" {
  bucket = "codepipeline-${data.aws_region.current.name}-${data.aws_caller_identity.current.account_id}-${var.pipeline_name}"
  force_destroy = true
}

# Block public access to the S3 bucket
resource "aws_s3_bucket_public_access_block" "codepipeline_bucket" {
  bucket = aws_s3_bucket.codepipeline_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Enable versioning for the S3 bucket
resource "aws_s3_bucket_versioning" "codepipeline_bucket" {
  bucket = aws_s3_bucket.codepipeline_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}