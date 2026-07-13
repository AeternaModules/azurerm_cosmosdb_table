variable "cosmosdb_tables" {
  description = <<EOT
Map of cosmosdb_tables, attributes below
Required:
    - account_name
    - name
    - resource_group_name
Optional:
    - throughput
    - autoscale_settings (block):
        - max_throughput (optional)
EOT

  type = map(object({
    account_name        = string
    name                = string
    resource_group_name = string
    throughput          = optional(number)
    autoscale_settings = optional(object({
      max_throughput = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_tables : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_tables : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_tables : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

