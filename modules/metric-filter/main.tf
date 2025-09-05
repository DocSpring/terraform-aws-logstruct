data "logstruct_pattern" "this" {
  source = var.log_source
  event  = var.log_event
}

resource "aws_cloudwatch_log_metric_filter" "this" {
  name           = var.name
  log_group_name = var.log_group_name
  pattern        = data.logstruct_pattern.this.pattern

  metric_transformation {
    name      = coalesce(var.metric_name, "${var.log_source}_${var.log_event}")
    namespace = var.namespace
    value     = "1"
    unit      = "Count"
  }
}
