infrastructure-policy-conditions = {
     cpu_alert  ={
    name                = "cpu_alert"
    query               = "SELECT average(cpuPercent) AS '%CPU Used' FROM SystemSample"
    threshold           = 80
    threshold_duration  = 300
    aggregation_window = 60
    aggregation_delay = 120
  }
  memory_alert ={
    name                = "memory_alert"
    query               = "SELECT average(memoryUsedBytes) * 100 / average(memoryTotalBytes) AS '%RAM Used' FROM SystemSample"
    threshold           = 90
    threshold_duration  = 300
    aggregation_window = 60
    aggregation_delay = 120
  }

}