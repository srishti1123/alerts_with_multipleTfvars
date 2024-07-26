module "apm-policy" {
  source = "./alerts"

  alert_policy_name   = "APM-POLICY"
  incident_preference = "PER_CONDITION"
  policy_id           = module.apm-policy.alert_policy_id
  alert_conditions = var.apm-policy-conditions
}
module "browser-policy" {
  source = "./alerts"

  alert_policy_name   = "BROWSER-POLICY"
  incident_preference = "PER_CONDITION"
  policy_id           = module.browser-policy.alert_policy_id
  alert_conditions = var.browser-policy-conditions
}
module "infrastructure-policy" {
  source = "./alerts"

  alert_policy_name   = "INFRASTRUCTURE-POLICY"
  incident_preference = "PER_CONDITION"
  policy_id           = module.infrastructure-policy.alert_policy_id
  alert_conditions =  var.infrastructure-policy-conditions
}

