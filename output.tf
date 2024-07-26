output "browser_policy_id" {
  value = module.browser-policy.alert_policy_id
}

output "apm_policy_id" {
  value = module.apm-policy.alert_policy_id
}
output "infra_policy_id" {
  value = module.infrastructure-policy.alert_policy_id
}
