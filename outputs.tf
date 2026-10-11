output "alert_configurations_id" {
  description = "Map of id values across all alert_configurations, keyed the same as var.alert_configurations except keys with no id are omitted"
  value       = { for k, v in mongodbatlas_alert_configuration.alert_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "alert_configurations_alert_configuration_id" {
  description = "Map of alert_configuration_id values across all alert_configurations, keyed the same as var.alert_configurations except keys with no alert_configuration_id are omitted"
  value       = { for k, v in mongodbatlas_alert_configuration.alert_configurations : k => v.alert_configuration_id if v.alert_configuration_id != null && length(v.alert_configuration_id) > 0 }
}
output "alert_configurations_created" {
  description = "Map of created values across all alert_configurations, keyed the same as var.alert_configurations except keys with no created are omitted"
  value       = { for k, v in mongodbatlas_alert_configuration.alert_configurations : k => v.created if v.created != null && length(v.created) > 0 }
}
output "alert_configurations_enabled" {
  description = "Map of enabled values across all alert_configurations, keyed the same as var.alert_configurations except keys with no enabled are omitted"
  value       = { for k, v in mongodbatlas_alert_configuration.alert_configurations : k => v.enabled if v.enabled != null }
}
output "alert_configurations_event_type" {
  description = "Map of event_type values across all alert_configurations, keyed the same as var.alert_configurations except keys with no event_type are omitted"
  value       = { for k, v in mongodbatlas_alert_configuration.alert_configurations : k => v.event_type if v.event_type != null && length(v.event_type) > 0 }
}
output "alert_configurations_matcher" {
  description = "Map of matcher values across all alert_configurations, keyed the same as var.alert_configurations except keys with no matcher are omitted"
  value       = { for k, v in mongodbatlas_alert_configuration.alert_configurations : k => v.matcher if v.matcher != null && length(v.matcher) > 0 }
}
output "alert_configurations_metric_threshold_config" {
  description = "Map of metric_threshold_config values across all alert_configurations, keyed the same as var.alert_configurations except keys with no metric_threshold_config are omitted"
  value       = { for k, v in mongodbatlas_alert_configuration.alert_configurations : k => v.metric_threshold_config if v.metric_threshold_config != null && length(v.metric_threshold_config) > 0 }
}
output "alert_configurations_notification" {
  description = "Map of notification values across all alert_configurations, keyed the same as var.alert_configurations except keys with no notification are omitted"
  value       = { for k, v in mongodbatlas_alert_configuration.alert_configurations : k => v.notification if v.notification != null && length(v.notification) > 0 }
  sensitive   = true
}
output "alert_configurations_project_id" {
  description = "Map of project_id values across all alert_configurations, keyed the same as var.alert_configurations except keys with no project_id are omitted"
  value       = { for k, v in mongodbatlas_alert_configuration.alert_configurations : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "alert_configurations_severity_override" {
  description = "Map of severity_override values across all alert_configurations, keyed the same as var.alert_configurations except keys with no severity_override are omitted"
  value       = { for k, v in mongodbatlas_alert_configuration.alert_configurations : k => v.severity_override if v.severity_override != null && length(v.severity_override) > 0 }
}
output "alert_configurations_threshold_config" {
  description = "Map of threshold_config values across all alert_configurations, keyed the same as var.alert_configurations except keys with no threshold_config are omitted"
  value       = { for k, v in mongodbatlas_alert_configuration.alert_configurations : k => v.threshold_config if v.threshold_config != null && length(v.threshold_config) > 0 }
}
output "alert_configurations_updated" {
  description = "Map of updated values across all alert_configurations, keyed the same as var.alert_configurations except keys with no updated are omitted"
  value       = { for k, v in mongodbatlas_alert_configuration.alert_configurations : k => v.updated if v.updated != null && length(v.updated) > 0 }
}

