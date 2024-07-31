variable "service_conditions" {
  type = map(object({
    guid                   = string
    name  = string
    account_id           = number
    valid_from = string
    valid_where     = string
    good_from       = string
    good_where       = string
    target = number
    count =number
    unit =string
  }))
}
