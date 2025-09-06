terraform {
  required_version = ">= 1.3.0"
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
