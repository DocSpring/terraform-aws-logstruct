module "metric_filter" {
  count          = var.enable_metric_filter ? 1 : 0
  source         = "./modules/metric-filter"
  name           = var.metric_filter_name
  log_group_name = var.metric_log_group_name
  log_source     = var.metric_log_source
  log_event      = var.metric_log_event
  namespace      = var.metric_namespace
  metric_name    = var.metric_metric_name
}

module "subscription_filter" {
  count           = var.enable_subscription_filter ? 1 : 0
  source          = "./modules/subscription-filter"
  name            = var.subscription_filter_name
  log_group_name  = var.subscription_log_group_name
  log_source      = var.subscription_log_source
  log_event       = var.subscription_log_event
  destination_arn = var.subscription_destination_arn
}

