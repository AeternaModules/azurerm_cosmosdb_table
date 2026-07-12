output "cosmosdb_tables_account_name" {
  description = "Map of account_name values across all cosmosdb_tables, keyed the same as var.cosmosdb_tables"
  value       = { for k, v in azurerm_cosmosdb_table.cosmosdb_tables : k => v.account_name }
}
output "cosmosdb_tables_autoscale_settings" {
  description = "Map of autoscale_settings values across all cosmosdb_tables, keyed the same as var.cosmosdb_tables"
  value       = { for k, v in azurerm_cosmosdb_table.cosmosdb_tables : k => v.autoscale_settings }
}
output "cosmosdb_tables_name" {
  description = "Map of name values across all cosmosdb_tables, keyed the same as var.cosmosdb_tables"
  value       = { for k, v in azurerm_cosmosdb_table.cosmosdb_tables : k => v.name }
}
output "cosmosdb_tables_resource_group_name" {
  description = "Map of resource_group_name values across all cosmosdb_tables, keyed the same as var.cosmosdb_tables"
  value       = { for k, v in azurerm_cosmosdb_table.cosmosdb_tables : k => v.resource_group_name }
}
output "cosmosdb_tables_throughput" {
  description = "Map of throughput values across all cosmosdb_tables, keyed the same as var.cosmosdb_tables"
  value       = { for k, v in azurerm_cosmosdb_table.cosmosdb_tables : k => v.throughput }
}

