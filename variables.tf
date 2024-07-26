variable "apm-policy-conditions" {
  type = map(object({
    name                = string
    query               = string
    threshold           = number
    threshold_duration  = number
    aggregation_window = number
    aggregation_delay = number
  }))
}
variable "browser-policy-conditions" {
  type = map(object({
    name                = string
    query               = string
    threshold           = number
    threshold_duration  = number
    aggregation_window = number
    aggregation_delay = number
  }))
}
variable "infrastructure-policy-conditions" {
  type = map(object({
    name                = string
    query               = string
    threshold           = number
    threshold_duration  = number
    aggregation_window = number
    aggregation_delay = number
  }))
}