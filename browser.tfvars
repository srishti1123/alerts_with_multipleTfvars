browser-policy-conditions = {
  first_input_delay = {
    name                = "first_input_delay_alert"
    query               = "SELECT average(firstInputDelay) AS 'FID (ms)' FROM PageViewTiming WHERE appName = 'relicstaurants/browser2'"
    threshold           = 200
    threshold_duration  = 300
    aggregation_window= 60
    aggregation_delay= 120
  }
  cumulative_layout_shift = {
    name                = "cumulative_layout_shift_alert"
    query               = "SELECT average(cumulativeLayoutShift) AS 'CLS' FROM PageViewTiming WHERE appName = 'relicstaurants/browser2'"
    threshold           = 1000
    threshold_duration  = 300
    aggregation_window= 60
    aggregation_delay= 120
  }
  largest_contentful_paint = {
    name                = "largest_contentful_paint_alert"
    query               = "SELECT average(largestContentfulPaint) AS 'LCP (ms)' FROM PageViewTiming WHERE appName = 'relicstaurants/browser2'"
    threshold           = 4.5
    threshold_duration  = 300
    aggregation_window= 60
    aggregation_delay= 120
  }
}
