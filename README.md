# terraform-module-aws-logstruct

Reusable Terraform modules for LogStruct on AWS.

Modules:
- `modules/metric-filter`: Creates an `aws_cloudwatch_log_metric_filter` from a LogStruct `source` and `event` using the LogStruct provider for validation and pattern generation.
- `modules/subscription-filter`: Creates an `aws_cloudwatch_log_subscription_filter` from a LogStruct `source` and `event`.

Versioning

- Provider: The LogStruct provider is auto‑tagged and released from the LogStruct CI. Provider versions track the gem’s releases and are kept in sync automatically.
- Module: This module is updated much less frequently and is NOT auto‑tagged. We publish module tags manually when the module itself changes. You do not need to keep the module version in lock‑step with the provider/gem; pin the module version independently in your configuration.

Links:
- Provider documentation: https://registry.terraform.io/providers/DocSpring/logstruct/latest
- Module on the Registry: https://registry.terraform.io/modules/DocSpring/logstruct/aws
