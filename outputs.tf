// Outputs
output "aws_iam_group_arn" {
  value = "${aws_iam_group.group.arn}"
}

output "aws_iam_group_name" {
  value = "${aws_iam_group.group.name}"
}

output "aws_iam_groupmembership_users" {
  value = "${aws_iam_group_membership.group.users}"
}

output "aws_iam_group_policy" {
  value = ["${aws_iam_group_policy.group.*.name}"]
}

