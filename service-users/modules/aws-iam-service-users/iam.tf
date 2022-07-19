data "aws_caller_identity" "current" {}


resource "aws_iam_user" "service_user" {
  for_each = toset(var.usernames)
  name = each.value
}

resource "aws_iam_policy" "service_policy" {
  for_each = aws_iam_user.service_user
  name        = "${each.value.name}_policy"
  description = "Metabase service user policies"
  policy      = templatefile("${each.value.name}_policy.json", {
    athena_bucket = "${var.athena_bucket}"
    bucket_1 = "${var.bucket_1}"
    account = data.aws_caller_identity.current.account_id
  })
  tags = {
    name = each.value.name
  }
}


resource "aws_iam_user_policy_attachment" "service_policy_attach" {
  for_each = aws_iam_policy.service_policy
  policy_arn = each.value.arn 
  user  =  each.value.tags.name
}
