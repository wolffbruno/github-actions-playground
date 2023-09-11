terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "livebus-terraform-state-v2"
    key    = "terraform.tfstate"
  }
}

provider "aws" {
  region = "us-east-1"
}