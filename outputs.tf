output "prod_ou_id" {
  description = "The ID of the Production Organizational Unit"
  value       = aws_organizations_organizational_unit.prod_ou.id
}

output "admin_ou_id" {
  description = "The ID of the Production Organizational Unit"
  value       = aws_organizations_organizational_unit.admin_ou.id
}

output "qa_ou_id" {
  description = "The ID of the Production Organizational Unit"
  value       = aws_organizations_organizational_unit.qa_ou.id
}

output "prod_account_id" {
  description = "The ID of the production account"
  value       = aws_organizations_account.prod_account.id
}

output "qa_account_id" {
  description = "The ID of the QA account"
  value       = aws_organizations_account.qa_account.id
}

output "admin_account_id" {
  description = "The ID of the admin account"
  value       = aws_organizations_account.admin_account.id
}

output "admin_vpc_id" {
  value = aws_vpc.admin_vpc.id
}
