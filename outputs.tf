output "workloads_sap_single_node_virtual_instances_app_location" {
  description = "Map of app_location values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.app_location }
}
output "workloads_sap_single_node_virtual_instances_environment" {
  description = "Map of environment values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.environment }
}
output "workloads_sap_single_node_virtual_instances_identity" {
  description = "Map of identity values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.identity }
}
output "workloads_sap_single_node_virtual_instances_location" {
  description = "Map of location values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.location }
}
output "workloads_sap_single_node_virtual_instances_managed_resource_group_name" {
  description = "Map of managed_resource_group_name values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.managed_resource_group_name }
}
output "workloads_sap_single_node_virtual_instances_managed_resources_network_access_type" {
  description = "Map of managed_resources_network_access_type values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.managed_resources_network_access_type }
}
output "workloads_sap_single_node_virtual_instances_name" {
  description = "Map of name values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.name }
}
output "workloads_sap_single_node_virtual_instances_resource_group_name" {
  description = "Map of resource_group_name values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.resource_group_name }
}
output "workloads_sap_single_node_virtual_instances_sap_fqdn" {
  description = "Map of sap_fqdn values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.sap_fqdn }
}
output "workloads_sap_single_node_virtual_instances_sap_product" {
  description = "Map of sap_product values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.sap_product }
}
output "workloads_sap_single_node_virtual_instances_single_server_configuration" {
  description = "Map of single_server_configuration values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.single_server_configuration }
  sensitive   = true
}
output "workloads_sap_single_node_virtual_instances_tags" {
  description = "Map of tags values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.tags }
}

