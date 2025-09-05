# terraform-module-aws-logstruct

Reusable Terraform modules for LogStruct on AWS.

Modules:
- `modules/metric-filter`: Creates an `aws_cloudwatch_log_metric_filter` from a LogStruct `source` and `event` using the LogStruct provider for validation and pattern generation.
- `modules/subscription-filter`: Creates an `aws_cloudwatch_log_subscription_filter` from a LogStruct `source` and `event`.

Versioning: module tags match the LogStruct gem and provider versions (e.g., `v0.0.3`).
