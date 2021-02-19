variable "create_account" {
  type        = bool
  description = "Do you wan to create AWS Org account"
  default     = true
}

variable "name" {
  type        = string
  description = "(Required) A friendly name for the member account."
}

variable "email" {
  type        = string
  description = "(Required) The email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account."
}

variable "iam_user_access_to_billing" {
  type        = string
  description = "(Optional) If set to ALLOW, the new account enables IAM users to access account billing information if they have the required permissions. If set to DENY, then only the root user of the new account can access account billing information."
  default     = "ALLOW"
}

variable "parent_id" {
  type        = string
  description = "(Optional) Parent Organizational Unit ID or Root ID for the account. Defaults to the Organization default Root ID. A configuration must be present for this argument to perform drift detection."
  default     = null
}

variable "role_name" {
  type        = string
  description = "(Optional) The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the master account, allowing users in the master account to assume the role, as permitted by the master account administrator. The role has administrator permissions in the new member account."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "(Optional) Key-value map of resource tags."
  default = {

  }
}
