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
