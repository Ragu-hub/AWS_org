resource "aws_organizations_account" "prod_account" {
  name      = "prod-account"
  email     = var.prod_email
  role_name = "OrganizationAccountAccessRole"
  tags = {
    Environment = "prod"
    Owner       = "Drayboard"
  }
}

resource "aws_organizations_account" "qa_account" {
  name      = "qa-account"
  email     = var.qa_email
  role_name = "OrganizationAccountAccessRole"
  tags = {
    Environment = "qa"
    Owner       = "Drayboard"
  }
}

resource "aws_organizations_account" "admin_account" {
  name      = "admin-account"
  email     = var.admin_email
  role_name = "OrganizationAccountAccessRole"
  tags = {
    Environment = "admin"
    Owner       = "Drayboard"
  }
}
