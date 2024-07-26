apm-policy-conditions = {
   
    apdex-enduser = {
    name                = "apdex-enduser-alert"
    query               = "SELECT  apdex(apm.service.apdex.user) as 'End user' FROM Metric WHERE (entity.guid = 'NDQzODI2MHxBUE18QVBQTElDQVRJT058MTA4Njc3NTUyMg')"
    threshold           = 0.7
    threshold_duration  = 300
    aggregation_window= 60
    aggregation_delay= 120
  }
  apdex-server = {
    name                = "apdex-server-alert"
    query               = "SELECT  apdex(apm.service.apdex.user) as 'End user' FROM Metric WHERE (entity.guid = 'NDQzODI2MHxBUE18QVBQTElDQVRJT058MTA4Njc3NTUyMg')"
    threshold           = 0.7
    threshold_duration  = 300
    aggregation_window= 60
    aggregation_delay= 120
  }
  
}