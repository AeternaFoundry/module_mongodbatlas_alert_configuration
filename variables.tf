variable "alert_configurations" {
  description = <<EOT
Map of alert_configurations, attributes below
Required:
    - event_type
    - project_id
Optional:
    - enabled
    - severity_override
    - matcher (block):
        - field_name (required)
        - operator (required)
        - value (required)
    - metric_threshold_config (block):
        - metric_name (required)
        - mode (optional)
        - operator (optional)
        - threshold (optional)
        - units (optional)
    - notification (block):
        - api_token (optional)
        - channel_name (optional)
        - datadog_api_key (optional)
        - datadog_region (optional)
        - delay_min (optional)
        - email_address (optional)
        - email_enabled (optional)
        - integration_id (optional)
        - interval_min (optional)
        - microsoft_teams_webhook_url (optional)
        - mobile_number (optional)
        - notifier_id (optional)
        - ops_genie_api_key (optional)
        - ops_genie_region (optional)
        - roles (optional)
        - service_key (optional)
        - sms_enabled (optional)
        - team_id (optional)
        - type_name (required)
        - username (optional)
        - victor_ops_api_key (optional)
        - victor_ops_routing_key (optional)
        - webhook_secret (optional)
        - webhook_url (optional)
    - threshold_config (block):
        - operator (optional)
        - threshold (optional)
        - units (optional)
EOT

  type = map(object({
    event_type        = string
    project_id        = string
    enabled           = optional(bool)
    severity_override = optional(string)
    matcher = optional(list(object({
      field_name = string
      operator   = string
      value      = string
    })))
    metric_threshold_config = optional(list(object({
      metric_name = string
      mode        = optional(string)
      operator    = optional(string)
      threshold   = optional(number)
      units       = optional(string)
    })))
    notification = optional(list(object({
      api_token                   = optional(string)
      channel_name                = optional(string)
      datadog_api_key             = optional(string)
      datadog_region              = optional(string)
      delay_min                   = optional(number)
      email_address               = optional(string)
      email_enabled               = optional(bool)
      integration_id              = optional(string)
      interval_min                = optional(number)
      microsoft_teams_webhook_url = optional(string)
      mobile_number               = optional(string)
      notifier_id                 = optional(string)
      ops_genie_api_key           = optional(string)
      ops_genie_region            = optional(string)
      roles                       = optional(list(string))
      service_key                 = optional(string)
      sms_enabled                 = optional(bool)
      team_id                     = optional(string)
      type_name                   = string
      username                    = optional(string)
      victor_ops_api_key          = optional(string)
      victor_ops_routing_key      = optional(string)
      webhook_secret              = optional(string)
      webhook_url                 = optional(string)
    })))
    threshold_config = optional(list(object({
      operator  = optional(string)
      threshold = optional(number)
      units     = optional(string)
    })))
  }))
}

