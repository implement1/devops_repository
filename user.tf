resource "aws_iam_user" "user1" {
 name = "myuser"
}

resource "aws_iam_group" "group1" {
  name = "mygroup"
}

resource "aws_iam_group_membership" "admin" {
 name = "tf-admin-group-membership"
 users = [
   "${aws_iam_user.user1.name}",
 ]
 group = "${aws_iam_group.group1.name}"
}

resource "aws_iam_group_policy_attachment" "test-attach" {
 group = "${aws_iam_group.group1.name}"
 policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
