resource "aws_iam_group_policy_attachment" "billing" {
  group = "${aws_iam_group.payer.name}"
  policy_arn = "arn:aws:iam::aws:policy/job-function/Billing"
}


resource "aws_iam_group" "payer" {
  name = "payer1"
  path = "/users/"
}

resource "aws_iam_group_membership" "billinggroup" {
  name = "billing-group-membership"

  users = [
    "user1",
  ]

  group = "${aws_iam_group.payer.name}"
}
