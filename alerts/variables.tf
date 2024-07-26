variable "alert_policy_name" {
  type = string
}
variable "incident_preference" {
  type = string
}
variable "policy_id" {
  type        = string
}

variable "alert_conditions" {
  type = map(object({
    name                = string
    query               = string
    threshold           = number
    threshold_duration  = number
    aggregation_window = number
    aggregation_delay = number
  }))
}
