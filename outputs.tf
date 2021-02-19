output "account_arn" {
  description = "The ARN for this account."
  value       = join("", aws_organizations_account.this.*.arn)
}

output "account_id" {
  description = "The AWS account id"
  value       = join("", aws_organizations_account.this.*.id)
}
