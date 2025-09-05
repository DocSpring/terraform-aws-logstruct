output "metric_pattern" {
  value       = try(module.metric_filter[0].pattern, null)
  description = "Compiled CloudWatch pattern used by the metric filter (null if disabled)."
}

