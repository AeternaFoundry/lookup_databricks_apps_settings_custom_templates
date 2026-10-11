variable "apps_settings_custom_templates_lookup" {
  description = <<EOT
Map of apps_settings_custom_templates_lookup, attributes below
Optional:
    - page_size
    - provider_config
EOT

  type = map(object({
    page_size = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

