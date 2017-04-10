// Variables

variable "aws_iam_group_name" {
  type = "string"
  description = "IAM group name"
}

variable "aws_iam_group_path" {
  type = "string"
  description = "IAM path."
  default = "/"
}

variable "aws_iam_group_members" {
  type = "list"
  description = "Group member names"
  default = []
}

variable "aws_iam_group_policy" {
  type = "map"
  description = "List of AWS IAM policy definitions in name=policy format"
  default = {}
}

variable "aws_iam_group_aws_managed_policy_arns" {
  type = "list"
  description = "List of AWS IAM managed policy names. (use with customer owned policies)"
  default = []
}

