terraform {
  backend "s3" {
    bucket  = "terraform-state-gop-staging-us-west-2"
    region  = "us-west-2"
    key     = "staging-gop-gateway-logs-policy"
    profile = "staging"
  }
}

provider "aws" {
  region  = "us-west-2"
  profile = "staging"
  version = "= 2.70.0"
}
