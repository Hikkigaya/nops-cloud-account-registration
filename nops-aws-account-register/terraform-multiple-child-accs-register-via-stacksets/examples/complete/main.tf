terraform {
  # required_version = "0.15.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.48.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "nops_aws_acc_register" {
  source = "../../"

  ReportName              = var.ReportName
  s3prefix                = var.s3prefix
  BucketName              = var.BucketName
  nOpsApiKey              = var.nOpsApiKey
  nOpsPrivateKey          = var.nOpsPrivateKey
  AccNamePreFixToRegister = var.AccNamePreFixToRegister
  list_of_OU_ids          = var.list_of_OU_ids
  org_root_id             = var.org_root_id
  tags                    = var.tags
}