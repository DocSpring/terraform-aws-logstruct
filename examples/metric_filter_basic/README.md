# Example: Metric Filter (Email Delivered)

This example shows how to create an `aws_cloudwatch_log_metric_filter` using the LogStruct provider and the `metric-filter` submodule.

Inputs

- `log_group_name` (string): CloudWatch Logs group name
- `namespace` (string): CloudWatch Metrics namespace

Usage

```
terraform init -backend=false
terraform validate
```

This example pins providers via the module's `versions.tf` and compiles the filter pattern from a canonical LogStruct source/event (`mailer` + `delivered`).

