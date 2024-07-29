infrastructure-policy-conditions = {
  cpu_alert = {
    type                         = "static"
    name                         = "cpu_alert"
    enabled                      = "true"
    violation_time_limit_seconds = 259200
    query                        = "SELECT average(cpuPercent) AS '%CPU Used' FROM SystemSample"
    operator                     = "above"
    threshold                    = 80
    threshold_duration           = 300
    threshold_occurrences        = "all"
    aggregation_window           = 60
    aggregation_method           = "event_flow"
    aggregation_delay            = 120
  }
  memory_alert = {
    type                         = "static"
    name                         = "memory_alert"
    enabled                      = "true"
    violation_time_limit_seconds = 259200
    query                        = "SELECT average(memoryUsedBytes) * 100 / average(memoryTotalBytes) AS '%RAM Used' FROM SystemSample"
    operator                     = "above"
    threshold                    = 90
    threshold_duration           = 300
    threshold_occurrences        = "all"
    aggregation_window           = 60
    aggregation_method           = "event_flow"
    aggregation_delay            = 120
  }

}
alert_destination = {
  infrastructure-alert-destination = {
    account_id                    = 4438260
    notification_destination_name = "infrastruture-alert-destination"
    notification_destination_type = "EMAIL"
    key_destination               = "email"
    notification_email            = "gsrishti111@gmail.com"
  }
}

alert_channel = {
  browser-alert-channel = {
    account_id                    = 4438260
    notification_channel_name     = "browser-alert-channel"
    notification_channel_type     = "EMAIL"
    notification_destination_name ="infra-alert-destination"
    product                       = "IINT"
    
    key_property                  = "subject"
    notification_subject          = "infrastruture Alert"
    
  }
}

workflows = {
  browser-alert-workflows = {
    name                      = "Browser Alert Workflow"
    muting_rules_handling     = "NOTIFY_ALL_ISSUES"
    filter_name               = " Filter-EXAMPLE"
    filter                    = "FILTER"
    filter_attribute          = "severity"
    filter_operator           = "IS"
    filter_values             = ["critical"]
    notification_channel_name = "infrastruture-alert-channel"


  }
}
