terraform {
  cloud {
    organization = "staxpayments"

    workspaces {
      tags = ["pipeline-poc"]
    }
  }
}
