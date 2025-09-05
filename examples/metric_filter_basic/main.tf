terraform {
  required_providers {
    logstruct = {
      source  = "DocSpring/logstruct"
      version = ">= 0.0.3"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

module "email_delivered_metric" {
  source         = "../..//modules/metric-filter"
  name           = "Email Delivered Count"
  log_group_name = var.log_group_name
  log_source     = "mailer"
  log_event      = "delivered"
  namespace      = var.namespace
}

variable "log_group_name" { type = string }
variable "namespace" { type = string }
