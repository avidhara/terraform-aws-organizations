# Terraform module for AWS Organizations

To know how to use please refer to `examples` folder
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.7, < 0.14 |
| aws | >= 2.68, < 4.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.68, < 4.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_organizations_account](https://registry.terraform.io/providers/hashicorp/aws/4.0/docs/resources/organizations_account) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create\_account | Do you wan to create AWS Org account | `bool` | `true` | no |
| email | (Required) The email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account. | `string` | n/a | yes |
| iam\_user\_access\_to\_billing | (Optional) If set to ALLOW, the new account enables IAM users to access account billing information if they have the required permissions. If set to DENY, then only the root user of the new account can access account billing information. | `string` | `"ALLOW"` | no |
| name | (Required) A friendly name for the member account. | `string` | n/a | yes |
| parent\_id | (Optional) Parent Organizational Unit ID or Root ID for the account. Defaults to the Organization default Root ID. A configuration must be present for this argument to perform drift detection. | `string` | `null` | no |
| role\_name | (Optional) The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the master account, allowing users in the master account to assume the role, as permitted by the master account administrator. The role has administrator permissions in the new member account. | `string` | `null` | no |
| tags | (Optional) Key-value map of resource tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| account\_arn | The ARN for this account. |
| account\_id | The AWS account id |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

Apache 2 Licensed. See LICENSE for full details.
