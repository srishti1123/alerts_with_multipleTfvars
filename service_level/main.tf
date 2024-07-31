resource "newrelic_service_level" "example-service-level" {
    for_each = var.service_conditions
    guid = each.value.guid
    name = each.value.name

    events {
        account_id = each.value.account_id
    
        valid_events {
            from = each.value.valid_from
            where = each.value.valid_where
        }
        good_events {
            from = each.value.good_from
            where = each.value.good_where
        }
    }

    objective {
        target = each.value.target
        time_window {
            rolling {
                count = each.value.count
                unit = each.value.unit
            }
        }
    }
}