resource "azurerm_workloads_sap_single_node_virtual_instance" "workloads_sap_single_node_virtual_instances" {
  for_each = var.workloads_sap_single_node_virtual_instances

  app_location                          = each.value.app_location
  environment                           = each.value.environment
  location                              = each.value.location
  name                                  = each.value.name
  resource_group_name                   = each.value.resource_group_name
  sap_fqdn                              = each.value.sap_fqdn
  sap_product                           = each.value.sap_product
  managed_resource_group_name           = each.value.managed_resource_group_name
  managed_resources_network_access_type = each.value.managed_resources_network_access_type
  tags                                  = each.value.tags

  single_server_configuration {
    app_resource_group_name = each.value.single_server_configuration.app_resource_group_name
    database_type           = each.value.single_server_configuration.database_type
    dynamic "disk_volume_configuration" {
      for_each = each.value.single_server_configuration.disk_volume_configuration != null ? each.value.single_server_configuration.disk_volume_configuration : []
      content {
        number_of_disks = disk_volume_configuration.value.number_of_disks
        size_in_gb      = disk_volume_configuration.value.size_in_gb
        sku_name        = disk_volume_configuration.value.sku_name
        volume_name     = disk_volume_configuration.value.volume_name
      }
    }
    secondary_ip_enabled = each.value.single_server_configuration.secondary_ip_enabled
    subnet_id            = each.value.single_server_configuration.subnet_id
    virtual_machine_configuration {
      image {
        offer     = each.value.single_server_configuration.virtual_machine_configuration.image.offer
        publisher = each.value.single_server_configuration.virtual_machine_configuration.image.publisher
        sku       = each.value.single_server_configuration.virtual_machine_configuration.image.sku
        version   = each.value.single_server_configuration.virtual_machine_configuration.image.version
      }
      os_profile {
        admin_username  = each.value.single_server_configuration.virtual_machine_configuration.os_profile.admin_username
        ssh_private_key = each.value.single_server_configuration.virtual_machine_configuration.os_profile.ssh_private_key
        ssh_public_key  = each.value.single_server_configuration.virtual_machine_configuration.os_profile.ssh_public_key
      }
      virtual_machine_size = each.value.single_server_configuration.virtual_machine_configuration.virtual_machine_size
    }
    dynamic "virtual_machine_resource_names" {
      for_each = each.value.single_server_configuration.virtual_machine_resource_names != null ? [each.value.single_server_configuration.virtual_machine_resource_names] : []
      content {
        dynamic "data_disk" {
          for_each = virtual_machine_resource_names.value.data_disk != null ? virtual_machine_resource_names.value.data_disk : []
          content {
            names       = data_disk.value.names
            volume_name = data_disk.value.volume_name
          }
        }
        host_name               = virtual_machine_resource_names.value.host_name
        network_interface_names = virtual_machine_resource_names.value.network_interface_names
        os_disk_name            = virtual_machine_resource_names.value.os_disk_name
        virtual_machine_name    = virtual_machine_resource_names.value.virtual_machine_name
      }
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }
}

