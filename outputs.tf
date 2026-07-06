output "workloads_sap_single_node_virtual_instances" {
  description = "All workloads_sap_single_node_virtual_instance resources"
  value       = azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances
  sensitive   = true
}
output "workloads_sap_single_node_virtual_instances_app_location" {
  description = "List of app_location values across all workloads_sap_single_node_virtual_instances"
  value       = [for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : v.app_location]
}
output "workloads_sap_single_node_virtual_instances_environment" {
  description = "List of environment values across all workloads_sap_single_node_virtual_instances"
  value       = [for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : v.environment]
}
output "workloads_sap_single_node_virtual_instances_identity" {
  description = "List of identity values across all workloads_sap_single_node_virtual_instances"
  value       = [for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : v.identity]
}
output "workloads_sap_single_node_virtual_instances_location" {
  description = "List of location values across all workloads_sap_single_node_virtual_instances"
  value       = [for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : v.location]
}
output "workloads_sap_single_node_virtual_instances_managed_resource_group_name" {
  description = "List of managed_resource_group_name values across all workloads_sap_single_node_virtual_instances"
  value       = [for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : v.managed_resource_group_name]
}
output "workloads_sap_single_node_virtual_instances_managed_resources_network_access_type" {
  description = "List of managed_resources_network_access_type values across all workloads_sap_single_node_virtual_instances"
  value       = [for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : v.managed_resources_network_access_type]
}
output "workloads_sap_single_node_virtual_instances_name" {
  description = "List of name values across all workloads_sap_single_node_virtual_instances"
  value       = [for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : v.name]
}
output "workloads_sap_single_node_virtual_instances_resource_group_name" {
  description = "List of resource_group_name values across all workloads_sap_single_node_virtual_instances"
  value       = [for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : v.resource_group_name]
}
output "workloads_sap_single_node_virtual_instances_sap_fqdn" {
  description = "List of sap_fqdn values across all workloads_sap_single_node_virtual_instances"
  value       = [for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : v.sap_fqdn]
}
output "workloads_sap_single_node_virtual_instances_sap_product" {
  description = "List of sap_product values across all workloads_sap_single_node_virtual_instances"
  value       = [for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : v.sap_product]
}
output "workloads_sap_single_node_virtual_instances_single_server_configuration" {
  description = "List of single_server_configuration values across all workloads_sap_single_node_virtual_instances"
  value       = [for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : v.single_server_configuration]
  sensitive   = true
}
output "workloads_sap_single_node_virtual_instances_tags" {
  description = "List of tags values across all workloads_sap_single_node_virtual_instances"
  value       = [for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : v.tags]
}

