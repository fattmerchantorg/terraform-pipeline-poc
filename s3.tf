module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.3.0"

  # AWS provider settings
  providers = {
    aws = aws.env
  }

  bucket = "stax-${var.environment}-pipeline-poc-bucket-${var.suffix}"
  acl    = "private"
  tags   = { role = "storage" }
}
