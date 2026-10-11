output "apps_settings_custom_templates_lookup_page_size" {
  description = "Map of page_size values across all apps_settings_custom_templates_lookup, keyed the same as var.apps_settings_custom_templates_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_apps_settings_custom_templates.apps_settings_custom_templates_lookup : k => v.page_size if v.page_size != null }
}
output "apps_settings_custom_templates_lookup_provider_config" {
  description = "Map of provider_config values across all apps_settings_custom_templates_lookup, keyed the same as var.apps_settings_custom_templates_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_apps_settings_custom_templates.apps_settings_custom_templates_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "apps_settings_custom_templates_lookup_templates" {
  description = "Map of templates values across all apps_settings_custom_templates_lookup, keyed the same as var.apps_settings_custom_templates_lookup except keys with no templates are omitted"
  value       = { for k, v in data.databricks_apps_settings_custom_templates.apps_settings_custom_templates_lookup : k => v.templates if v.templates != null && length(v.templates) > 0 }
}

