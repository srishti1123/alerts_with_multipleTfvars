variable "apm-policy-conditions" {

  type =any
  # type = map(object({
  #   type                         = string
  #   name                         = string
  #   enabled                      = string
  #   violation_time_limit_seconds = number
  #   query                        = string
  #     operator                     = string         
  #   threshold                    = number
  #   threshold_duration           = number
  #   threshold_occurrences        = number 
  #   warning_operator             =string        
  #   warning_threshold            = number
  #   warning_threshold_duration   = number
  #   warning_threshold_occurrences = number
  #   aggregation_window           = number
  #   aggregation_method           = string
  #   aggregation_delay            = number
  # }))
}
variable "infrastructure-policy-conditions" {
  type = any
  #  operator                     = optional(string, null)          
  #   threshold                    = optional(number, null)
  #   threshold_duration           = optional(number, null)
  #   threshold_occurrences        = optional(number, null)
  #   warning_operator             = optional(string, null)          
  #   warning_threshold            = optional(number, null)
  #   warning_threshold_duration   = optional(number, null)
  #   warning_threshold_occurrences = optional(number, null)

  #  operator                     = string         
  #   threshold                    = number
  #   threshold_duration           = number
  #   threshold_occurrences        = number 
  #   warning_operator             =string        
  #   warning_threshold            = number
  #   warning_threshold_duration   = number
  #   warning_threshold_occurrences = number


  #   aggregation_window           = number
  #   aggregation_method           = string
  #   aggregation_delay            = number
  # }))
}


variable "browser-policy-conditions" {
  type= any
  # type = map(object({
  #   type                         = string
  #   name                         = string
  #   enabled                      = string
  #   violation_time_limit_seconds = number
  #   query                        = string
  #  operator                     = optional(string, null)          
  #   threshold                    = optional(number, null)
  #   threshold_duration           = optional(number, null)
  #   threshold_occurrences        = optional(number, null)
  #   warning_operator             = optional(string, null)          
  #   warning_threshold            = optional(number, null)
  #   warning_threshold_duration   = optional(number, null)
  #   warning_threshold_occurrences = optional(number, null)
  #   operator                     = string         
  #   threshold                    = number
  #   threshold_duration           = number
  #   threshold_occurrences        = number 
  #   warning_operator             =string        
  #   warning_threshold            = number
  #   warning_threshold_duration   = number
  #   warning_threshold_occurrences = number
  #   aggregation_window           = number
  #   aggregation_method           = string
  #   aggregation_delay            = number
  # }))
}
# va

# variable "alert_destination" {
#   type = map(object({
#     account_id                    = number
#     notification_destination_name = string
#     notification_destination_type = string
#     key_destination               = string
#     notification_email            = string
#   }))
# }
# variable "alert_channel" {
#   type = map(object({
#     account_id                    = number
#     notification_channel_name     = string
#     notification_channel_type     = string
#     notification_destination_name = string
#     product                       = string
#     key_property                  = string
#     notification_subject          = string
#   }))
# }

# variable "workflows" {
#   type = map(object({
#     name                      = string
#     muting_rules_handling     = string
#     filter_name               = string
#     filter                    = string
#     filter_attribute          = string
#     filter_operator           = string
#     filter_values             = list(string)
#     notification_channel_name = string
#   }))
# }

variable "service_conditions" {
  type = map(object({
    guid                   = string
    name  = string
    account_id           = number
    valid_from = string
    valid_where     = string
    good_from       = string
    good_where       = string
    target = number
    count =number
    unit =string
  }))
}
