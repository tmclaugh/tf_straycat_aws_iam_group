// Resoruces
resource "aws_iam_group" "group" {
  name = "${var.aws_iam_group_name}"
  path = "${var.aws_iam_group_path}"
}

