data "logstruct_pattern" "this" {
  source = var.log_source
  event  = var.log_event
}

resource "aws_cloudwatch_log_subscription_filter" "this" {
  name            = var.name
  log_group_name  = var.log_group_name
  destination_arn = var.destination_arn
  filter_pattern  = data.logstruct_pattern.this.pattern
}
