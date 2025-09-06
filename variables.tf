variable "enable_metric_filter" {
  type    = bool
  default = false
}

variable "enable_subscription_filter" {
  type    = bool
  default = false
}

# Metric filter inputs
variable "metric_filter_name" {
  type    = string
  default = null
}

variable "metric_log_group_name" {
  type    = string
  default = null
}

variable "metric_log_source" {
  type    = string
  default = null
}

variable "metric_log_event" {
  type    = string
  default = null
}

variable "metric_namespace" {
  type    = string
  default = null
}

variable "metric_metric_name" {
  type    = string
  default = null
}

# Subscription filter inputs
variable "subscription_filter_name" {
  type    = string
  default = null
}

variable "subscription_log_group_name" {
  type    = string
  default = null
}

variable "subscription_log_source" {
  type    = string
  default = null
}

variable "subscription_log_event" {
  type    = string
  default = null
}

variable "subscription_destination_arn" {
  type    = string
  default = null
}
