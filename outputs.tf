output "workloads_sap_single_node_virtual_instances_id" {
  description = "Map of id values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workloads_sap_single_node_virtual_instances_app_location" {
  description = "Map of app_location values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.app_location if v.app_location != null && length(v.app_location) > 0 }
}
output "workloads_sap_single_node_virtual_instances_environment" {
  description = "Map of environment values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.environment if v.environment != null && length(v.environment) > 0 }
}
output "workloads_sap_single_node_virtual_instances_identity" {
  description = "Map of identity values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "workloads_sap_single_node_virtual_instances_location" {
  description = "Map of location values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.location if v.location != null && length(v.location) > 0 }
}
output "workloads_sap_single_node_virtual_instances_managed_resource_group_name" {
  description = "Map of managed_resource_group_name values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.managed_resource_group_name if v.managed_resource_group_name != null && length(v.managed_resource_group_name) > 0 }
}
output "workloads_sap_single_node_virtual_instances_managed_resources_network_access_type" {
  description = "Map of managed_resources_network_access_type values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.managed_resources_network_access_type if v.managed_resources_network_access_type != null && length(v.managed_resources_network_access_type) > 0 }
}
output "workloads_sap_single_node_virtual_instances_name" {
  description = "Map of name values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workloads_sap_single_node_virtual_instances_resource_group_name" {
  description = "Map of resource_group_name values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "workloads_sap_single_node_virtual_instances_sap_fqdn" {
  description = "Map of sap_fqdn values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.sap_fqdn if v.sap_fqdn != null && length(v.sap_fqdn) > 0 }
}
output "workloads_sap_single_node_virtual_instances_sap_product" {
  description = "Map of sap_product values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.sap_product if v.sap_product != null && length(v.sap_product) > 0 }
}
output "workloads_sap_single_node_virtual_instances_single_server_configuration" {
  description = "Map of single_server_configuration values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.single_server_configuration if v.single_server_configuration != null && length(v.single_server_configuration) > 0 }
  sensitive   = true
}
output "workloads_sap_single_node_virtual_instances_tags" {
  description = "Map of tags values across all workloads_sap_single_node_virtual_instances, keyed the same as var.workloads_sap_single_node_virtual_instances"
  value       = { for k, v in azurerm_workloads_sap_single_node_virtual_instance.workloads_sap_single_node_virtual_instances : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

