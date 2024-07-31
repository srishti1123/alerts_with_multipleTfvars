resource "newrelic_alert_policy" "policies" {
  name                = var.alert_policy_name
  incident_preference = var.incident_preference
}
resource "newrelic_nrql_alert_condition" "conditions" {
  for_each = var.alert_conditions
  policy_id                    = newrelic_alert_policy.policies.id
  type                         = each.value.type
  name                         = each.value.name
  enabled                      = each.value.enabled
  violation_time_limit_seconds = each.value.violation_time_limit_seconds  

  nrql {
    query = each.value.query
  }
    critical {
    operator              = try(each.value.critical_operator, null)
    threshold             = try(each.value.critical_threshold, null)
    threshold_duration    = try(each.value.critical_threshold_duration, null)
    threshold_occurrences = try(each.value.critical_threshold_occurrences, null)
  }
  warning {
    operator              = try(each.value.warning_operator, null)
    threshold             = try(each.value.warning_threshold, null)
    threshold_duration    = try(each.value.warning_threshold_duration, null)
    threshold_occurrences = try(each.value.warning_threshold_occurrences, null)
  }
  
  aggregation_window  = each.value.aggregation_window 
  aggregation_method  = each.value.aggregation_method    
  aggregation_delay   = each.value.aggregation_delay 
}
# resource "newrelic_notification_destination" "destination" {
#   for_each = var.alert_destination

#   account_id = each.value.account_id
#   name       = each.value.notification_destination_name 
#   type       = each.value.notification_destination_type
  
#   property {
#     key   = each.value.key_destination        
#     value = each.value.notification_email
#   }
# }

# resource "newrelic_notification_channel" "channel" {
#   for_each = var.alert_channel

#   account_id     = each.value.account_id
#   name           = each.value.notification_channel_name
#   type           = each.value.notification_channel_type
#   destination_id = newrelic_notification_destination.destination.[each.value.newrelic_notification_destination.destination_id]
#   product        = each.value.product
  
#   property {
#     key   = each.value.key_property       
#     value = each.value.notification_subject
#   }
  
# }

# resource "newrelic_workflow" "workflow" {
#   for_each = var.workflows

#   name                 = each.value.name
#   muting_rules_handling = each.value.muting_rules_handling

#   issues_filter {
#     name = each.value.filter_name
#     type = each.value.filter    

#     predicate {
#       attribute = each.value.filter_attribute
#       operator  = each.value.filter_operator
#       values    = each.value.filter_values
#     }
#   }

#   destination {
#     channel_id = newrelic_notification_channel.channel.id
#   }
# }
 
 
