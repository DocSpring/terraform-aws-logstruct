data "logstruct_pattern" "this" {
  source = var.source
  event  = var.event
}

resource "aws_cloudwatch_log_metric_filter" "this" {
  name           = var.name
  log_group_name = var.log_group_name
  pattern        = data.logstruct_pattern.this.pattern

  metric_transformation {
    name      = coalesce(var.metric_name, "${var.source}_${var.event}")
    namespace = var.namespace
    value     = "1"
    unit      = "Count"
  }
}
