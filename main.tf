data "aws_organizations_organization" "existing_org" {}

resource "aws_organizations_organizational_unit" "prod_ou" {
  name      = "Production"
  parent_id = data.aws_organizations_organization.existing_org.roots[0].id
}

resource "aws_organizations_organizational_unit" "qa_ou" {
  name      = "QA"
  parent_id = data.aws_organizations_organization.existing_org.roots[0].id
}

resource "aws_organizations_organizational_unit" "admin_ou" {
  name      = "admin"
  parent_id = data.aws_organizations_organization.existing_org.roots[0].id
}

resource "aws_organizations_account" "prod_account" {
  name      = "prod-account"
  email     = var.prod_email
  role_name = "OrganizationAccountAccessRole"
  tags = {
    Environment = "prod"
    Owner       = "Drayboard"
  }
  parent_id = aws_organizations_organizational_unit.prod_ou.id
}

resource "aws_organizations_account" "qa_account" {
  name      = "qa-account"
  email     = var.qa_email
  role_name = "OrganizationAccountAccessRole"
  tags = {
    Environment = "qa"
    Owner       = "Drayboard"
  }
  parent_id = aws_organizations_organizational_unit.qa_ou.id
}

resource "aws_organizations_account" "admin_account" {
  name      = "admin-account"
  email     = var.admin_email
  role_name = "OrganizationAccountAccessRole"
  tags = {
    Environment = "admin"
    Owner       = "Drayboard"
  }
  parent_id = aws_organizations_organizational_unit.admin_ou.id
}
