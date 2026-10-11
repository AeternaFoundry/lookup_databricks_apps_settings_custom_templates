data "databricks_apps_settings_custom_templates" "apps_settings_custom_templates_lookup" {
  for_each = var.apps_settings_custom_templates_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

