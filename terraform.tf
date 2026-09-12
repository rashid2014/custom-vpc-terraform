terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "pragra-tfstate-2026"
    key    = "env/dev/terraform-customvpc.tfstate"
    region = "ca-central-1"
  }
}