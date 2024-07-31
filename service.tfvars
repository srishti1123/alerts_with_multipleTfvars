service_conditions = {
  services-1 = {
    guid = "NDQzODI2MHxBUE18QVBQTElDQVRJT058MTA4Njc3NTUyMg"
    name ="Latency"
    account_id =4438260
    valid_from = "Transaction"
    valid_where = "appName = 'relicstaurants/apm' "
    good_from ="Transaction"
    good_where ="appName = 'relicstaurants/apm' AND (transactionType= 'Web') "
    target = 99.00
    count =7
    unit ="DAY"
  }
   service-2 = {
    guid = "NDQzODI2MHxBUE18QVBQTElDQVRJT058MTA4Njc3NTUyMg"
    name ="Latency-2"
    account_id =4438260
    valid_from = "Transaction"
    valid_where = "appName = 'relicstaurants/apm' AND (transactionType= 'Web')  "
    good_from ="Transaction"
    good_where ="appName = 'relicstaurants/apm' AND (transactionType= 'Web') AND duration < 0.1 "
    target = 99.00
    count =7
    unit ="DAY"

   }
   
}