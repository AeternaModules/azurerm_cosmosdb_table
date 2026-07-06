output "cosmosdb_tables" {
  description = "All cosmosdb_table resources"
  value       = azurerm_cosmosdb_table.cosmosdb_tables
}
output "cosmosdb_tables_account_name" {
  description = "List of account_name values across all cosmosdb_tables"
  value       = [for k, v in azurerm_cosmosdb_table.cosmosdb_tables : v.account_name]
}
output "cosmosdb_tables_autoscale_settings" {
  description = "List of autoscale_settings values across all cosmosdb_tables"
  value       = [for k, v in azurerm_cosmosdb_table.cosmosdb_tables : v.autoscale_settings]
}
output "cosmosdb_tables_name" {
  description = "List of name values across all cosmosdb_tables"
  value       = [for k, v in azurerm_cosmosdb_table.cosmosdb_tables : v.name]
}
output "cosmosdb_tables_resource_group_name" {
  description = "List of resource_group_name values across all cosmosdb_tables"
  value       = [for k, v in azurerm_cosmosdb_table.cosmosdb_tables : v.resource_group_name]
}
output "cosmosdb_tables_throughput" {
  description = "List of throughput values across all cosmosdb_tables"
  value       = [for k, v in azurerm_cosmosdb_table.cosmosdb_tables : v.throughput]
}

