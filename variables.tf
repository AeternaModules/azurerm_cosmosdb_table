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
}

