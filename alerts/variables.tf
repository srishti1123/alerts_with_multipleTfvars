variable "alert_policy_name" {
  type = string
}
variable "incident_preference" {
  type = string
}
# 

variable "alert_conditions" {
  type = any
}

# variable "alert_destination" {
#   type = map(object({
#     account_id= number
#     notification_destination_name= string
#     notification_destination_type=string
#     key_destination=string
#      notification_email =string
#   }))
# }
# variable "alert_channel" {
#   type = map(object({
#     account_id                   = number
#     notification_channel_name   = string
#     notification_channel_type   = string
#     notification_destination_name = string
#     product                     = string
#     key_property = string
#     notification_subject        = string
#   }))
# }

# variable "workflows" {
#   type = map(object({
#     name                    = string
#     muting_rules_handling   = string
#     filter_name             = string
#     filter = string
#     filter_attribute        = string
#     filter_operator         = string
#     filter_values           = list(string)
#     notification_channel_name = string
#   }))
# }