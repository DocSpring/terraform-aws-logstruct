# Example: Subscription Filter (Mailer Errors)

This example shows how to create an `aws_cloudwatch_log_subscription_filter` using the LogStruct provider and the `subscription-filter` submodule.

Inputs

- `log_group_name` (string): CloudWatch Logs group name
- `destination_arn` (string): Destination ARN for the subscription (e.g., Lambda)

Usage

```
terraform init -backend=false
terraform validate
```

This example compiles the filter pattern from `log_source = "mailer"` and `log_event = "error"` via the LogStruct provider.

