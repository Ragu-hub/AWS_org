terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
    region = "us-east-2"
}

provider "aws" {
  alias  = "admin"
  region = "us-east-2"
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.admin_account.id}:role/OrganizationAccountAccessRole"
  }
}

provider "aws" {
  alias  = "qa"
  region = "us-east-2"
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.qa_account.id}:role/OrganizationAccountAccessRole"
  }
}
