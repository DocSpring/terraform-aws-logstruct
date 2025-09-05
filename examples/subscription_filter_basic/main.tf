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

module "mailer_errors_sub" {
  source          = "../..//modules/subscription-filter"
  name            = "MailerErrors"
  log_group_name  = var.log_group_name
  log_source      = "mailer"
  log_event       = "error"
  destination_arn = var.destination_arn
}

variable "log_group_name" { type = string }
variable "destination_arn" { type = string }
