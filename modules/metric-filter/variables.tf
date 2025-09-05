variable "name" { type = string }
variable "log_group_name" { type = string }
variable "log_source" { type = string }
variable "log_event" { type = string }
variable "namespace" { type = string }
variable "metric_name" {
  type    = string
  default = null
}
