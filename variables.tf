variable "tags" {
  description = "A map of default tags"
  type        = map(string)
  default = {
    company           = "stax"
    deployment_method = "Terraform"
    app_name          = "main"
  }
}

variable "region" {
  description = "Target AWS region where resources are going to be deployed"
  type        = string
  default     = "us-west-2"
}

variable "company" {
  description = "The name of the company"
  type        = string
  default     = "stax"
}

## NOTE: For demo's sake we are going to point to the same AWS acct id
variable "aws_account_id" {
  description = "The target AWS account id"
  type        = map(string)
  default = {
    terraform-pipeline-poc-sandbox-us-west-2 = "144944582707"
    terraform-pipeline-poc-qa-us-west-2      = "144944582707"
    terraform-pipeline-poc-dev-us-west-2     = "144944582707"
    terraform-pipeline-poc-prod-us-west-2    = "144944582707"
  }
}

variable "suffix" {
  description = "An example suffix used to be appended in bucket's name section"
  type        = string
}

variable "environment" {
  description = "The name of the environment"
  type        = string
}
