apm-policy-conditions = {
  // includes both critical and warning 
  apdex-enduser = {
    type                         = "static"
    name                         = "apdex-enduser-alert"
    enabled                      = "true"
    violation_time_limit_seconds = 259200
    query                        = "SELECT  apdex(apm.service.apdex.user) as 'End user' FROM Metric WHERE (entity.guid = 'NDQzODI2MHxBUE18QVBQTElDQVRJT058MTA4Njc3NTUyMg')"
    operator                     = "above"
    threshold                    = 0.7
    threshold_duration           = 300
    threshold_occurrences        = "all"
    aggregation_window           = 60
    aggregation_method           = "event_flow"
    aggregation_delay            = 120
  }
  apdex-server = {
    type                         = "static"
    name                         = "apdex-server-alert"
    enabled                      = "true"
    violation_time_limit_seconds = 259200
    query                        = "SELECT  apdex(apm.service.apdex.user) as 'End user' FROM Metric WHERE (entity.guid = 'NDQzODI2MHxBUE18QVBQTElDQVRJT058MTA4Njc3NTUyMg')"
    operator                     = "above"
    threshold                    = 0.7
    threshold_duration           = 300
    threshold_occurrences        = "all"
    aggregation_window           = 60
    aggregation_method           = "event_flow"
    aggregation_delay            = 120
  }
}

alert_destination = {
  apm-alert-destination = {
    account_id                    = 4438260
    notification_destination_name = "apm-alert-destination"
    notification_destination_type = "EMAIL"
    key_destination               = "email"
    notification_email            = "gsrishti111@gmail.com"
  }
}

alert_channel = {
  browser-alert-channel = {
    account_id                    = 4438260
    notification_channel_name     = "apm-alert-channel"
    notification_channel_type     = "EMAIL"
     notification_destination_name ="apm-alert-destination"
    product                       = "IINT"
     
    key_property                  = "subject"
    notification_subject          = "apm Alert"
  }
}

workflows = {
  browser-alert-workflows = {
    name                      = "apm Alert Workflow"
    muting_rules_handling     = "NOTIFY_ALL_ISSUES"
    filter_name               = " Filter-EXAMPLE"
    filter                    = "FILTER"
    filter_attribute          = "severity"
    filter_operator           = "IS"
    filter_values             = ["critical"]
    notification_channel_name = "apm-alert-channel"


  }
}

