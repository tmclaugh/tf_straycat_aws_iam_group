// Resoruces
resource "aws_iam_group" "group" {
  name = "${var.aws_iam_group_name}"
  path = "${var.aws_iam_group_path}"
}

# We do group membership here instead of at the user level because we attach
# policies to groups and therefore we want to typically look at a group,
# understand what it has access to, and then see who has that access.
resource "aws_iam_group_membership" "group" {
  count = "${length(var.aws_iam_group_members) == 0 ? 0 : 1}"
  name  = "${aws_iam_group.group.name}-membership"
  users = "${var.aws_iam_group_members}"
  group = "${aws_iam_group.group.name}"
}

resource "aws_iam_group_policy" "group" {
  count = "${length(var.aws_iam_group_policy)}"
  name = "${element(keys(var.aws_iam_group_policy), count.index)}"
  group = "${aws_iam_group.group.name}"
  policy = "${element(values(var.aws_iam_group_policy), count.index)}"
}

