// Resoruces
resource "aws_iam_group" "group" {
  name = "${var.aws_iam_group_name}"
  path = "${var.aws_iam_group_path}"
}

# We do group membership here instead of at the user level because we attach
# policies to groups and therefore we want to typically look at a group,
# understand what it has access to, and then see who has that access.
resource "aws_iam_group_membership" "group"{
  count = "${length(var.aws_iam_group_members) == 0 ? 0 : 1}"
  name  = "${var.aws_iam_group_name}-membership"
  users = "${var.aws_iam_group_members}"
  group = "${var.aws_iam_group_name}"
}

