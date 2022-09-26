data "aws_caller_identity" "current" {}

resource "aws_cloudwatch_log_group" "hello-world" {
  name = "hello-world"
  retention_in_days = 1
}
