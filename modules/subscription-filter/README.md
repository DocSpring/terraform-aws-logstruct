## subscription-filter module

Creates an `aws_cloudwatch_log_subscription_filter` using a validated LogStruct `source` and `event`.

Inputs:
- `name` (string)
- `log_group_name` (string)
- `log_source` (string): e.g., `mailer`, `job`.
- `log_event` (string): event name validated by the LogStruct provider.
- `destination_arn` (string): destination for the subscription (e.g., Lambda ARN).
