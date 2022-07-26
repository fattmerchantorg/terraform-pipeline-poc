module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.3.0"

  # AWS provider settings
  providers = {
    aws = aws.env
  }

  bucket = "${var.environment}-stax-pipeline-poc-bucket-${var.suffix}"
  acl    = "private"
  tags   = { role = "storage" }
 }
