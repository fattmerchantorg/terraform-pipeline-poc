provider "aws" {
  region = var.region
  alias  = "env"

  default_tags {
    tags = {
      environment       = terraform.workspace
      company           = var.tags["company"]
      deployment_method = var.tags["deployment_method"]
      app               = var.tags["app_name"]
    }
  }

  assume_role {
    role_arn = "arn:aws:iam::${var.aws_account_id[terraform.workspace]}:role/TerraformCloud"
  }

  allowed_account_ids = [var.aws_account_id[terraform.workspace]]
}
