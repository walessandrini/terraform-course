terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.54"
    }
  }
  required_version = "~>1.9"
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = var.tags
  }
}