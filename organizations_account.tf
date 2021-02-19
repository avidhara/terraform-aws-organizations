resource "aws_organizations_account" "this" {
  count                      = var.create_account ? 1 : 0
  name                       = var.name
  email                      = var.email
  iam_user_access_to_billing = var.iam_user_access_to_billing
  parent_id                  = var.parent_id
  role_name                  = var.role_name
  tags                       = var.tags

  lifecycle {
    ignore_changes = [
      role_name,
    ]
  }
}
