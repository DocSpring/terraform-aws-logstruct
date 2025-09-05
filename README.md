# terraform-aws-logstruct

Reusable Terraform modules for LogStruct on AWS.

Modules:

- `modules/metric-filter`: Creates an `aws_cloudwatch_log_metric_filter` from a LogStruct `source` and `event` using the LogStruct provider for validation and pattern generation.
- `modules/subscription-filter`: Creates an `aws_cloudwatch_log_subscription_filter` from a LogStruct `source` and `event`.

Root module

The root re-exports both submodules as optional modules. Enable one or both via booleans and pass the corresponding inputs:

```hcl
module "logstruct_aws" {
  source = "DocSpring/logstruct/aws"

  enable_metric_filter       = true
  metric_filter_name         = "Email Delivered Count"
  metric_log_group_name      = var.log_group.docspring
  metric_log_source          = "mailer"
  metric_log_event           = "delivered"
  metric_namespace           = var.namespace.logs

  enable_subscription_filter = false
}
```

Versioning

- Provider: The LogStruct provider is auto‑tagged and released from the LogStruct CI. Provider versions track the gem’s releases and are kept in sync automatically.
- Module: This module is updated much less frequently and is NOT auto‑tagged. We publish module tags manually when the module itself changes. You do not need to keep the module version in lock‑step with the provider/gem; pin the module version independently in your configuration.

Links:

- Provider documentation: https://registry.terraform.io/providers/DocSpring/logstruct/latest
- Module on the Registry: https://registry.terraform.io/modules/DocSpring/logstruct/aws
