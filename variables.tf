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


