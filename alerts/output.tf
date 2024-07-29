output "alert_policy_id" {
  value= newrelic_alert_policy.policies.id
}

# output "notification_destination_keys" {
#   value = [for k in newrelic_notification_destination.destination : k]
# }

