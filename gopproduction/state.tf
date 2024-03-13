terraform {
  backend "s3" {
    bucket  = "terraform-state-gop-production-us-west-2"
    region  = "us-west-2"
    key     = "production-gop-gateway-logs-policy"
    profile = "production"
  }
}

provider "aws" {
  region  = "us-west-2"
  profile = "production"
  version = "= 2.70.0"
}
