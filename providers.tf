terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.10.0"
    }
  }
}

# Default provider for resource creation
provider "aws" {
  region  = "eu-west-2"
  profile = "infrauser"
}

# Provider required in useast1 for cloudfront, SSLM Certificate
provider "aws" {
  alias   = "useast1"
  region  = "us-east-1"
  profile = "infrauser"
}