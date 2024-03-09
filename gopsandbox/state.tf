terraform {
  backend "s3" {
    bucket  = "terraform-state-axiamed-sandbox-us-west-2"
    region  = "us-west-2"
    key     = "sandbox-axiamed-gateway-logs-policy"
    profile = "sandbox"
  }
}

provider "aws" {
  region  = "us-west-2"
  profile = "sandbox"
  version = "= 2.70.0"
}
