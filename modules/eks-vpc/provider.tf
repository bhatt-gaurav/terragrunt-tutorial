terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.56"
    }
  }
}
provider "aws" {
  region = var.region_name
  default_tags {
    tags = {
      "Application" = "kubernetes"
      "Tool"        = "Terragrunt-managed-resources"
    }
  }
}