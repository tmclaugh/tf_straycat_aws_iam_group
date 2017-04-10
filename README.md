# tf_straycat_aws_iam_group
Manages groups in AWS IAM

## Variables
### Required
* ___aws_iam_group_name:___ Name of group.


### Optional
* ___aws_iam_group_path:___ Optional path for username.  Place service related accounts under _/service_.
* ___aws_iam_groupmembership_users:___ List of group members.
* ___aws_iam_managed_group_policy_arns:___ List group policy names.

## Managed policies.
Managed policy attachment is ugly because there exists no way at this writing to get the ARN of an AWS managed (as opposed to customer managed) policy.

