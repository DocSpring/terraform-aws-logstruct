## metric-filter module

Creates an `aws_cloudwatch_log_metric_filter` using a validated LogStruct `source` and `event`.

Inputs:
- `name` (string)
- `log_group_name` (string)
- `log_source` (string): e.g., `mailer`, `job`.
- `log_event` (string): event name validated by the LogStruct provider.
- `namespace` (string): CloudWatch namespace.
- `metric_name` (string, optional): overrides the generated name.

Outputs:
- `pattern` (string): compiled filter pattern used by the metric filter.
