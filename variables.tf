variable "workloads_sap_single_node_virtual_instances" {
  description = <<EOT
Map of workloads_sap_single_node_virtual_instances, attributes below
Required:
    - app_location
    - environment
    - location
    - name
    - resource_group_name
    - sap_fqdn
    - sap_product
    - single_server_configuration (block):
        - app_resource_group_name (required)
        - database_type (optional)
        - disk_volume_configuration (optional, block):
            - number_of_disks (required)
            - size_in_gb (required)
            - sku_name (required)
            - volume_name (required)
        - secondary_ip_enabled (optional)
        - subnet_id (required)
        - virtual_machine_configuration (required, block):
            - image (required, block):
                - offer (required)
                - publisher (required)
                - sku (required)
                - version (required)
            - os_profile (required, block):
                - admin_username (required)
                - ssh_private_key (required)
                - ssh_public_key (required)
            - virtual_machine_size (required)
        - virtual_machine_resource_names (optional, block):
            - data_disk (optional, block):
                - names (required)
                - volume_name (required)
            - host_name (optional)
            - network_interface_names (optional)
            - os_disk_name (optional)
            - virtual_machine_name (optional)
Optional:
    - managed_resource_group_name
    - managed_resources_network_access_type
    - tags
    - identity (block):
        - identity_ids (required)
        - type (required)
EOT

  type = map(object({
    app_location                          = string
    environment                           = string
    location                              = string
    name                                  = string
    resource_group_name                   = string
    sap_fqdn                              = string
    sap_product                           = string
    managed_resource_group_name           = optional(string)
    managed_resources_network_access_type = optional(string) # Default: "Public"
    tags                                  = optional(map(string))
    single_server_configuration = object({
      app_resource_group_name = string
      database_type           = optional(string)
      disk_volume_configuration = optional(list(object({
        number_of_disks = number
        size_in_gb      = number
        sku_name        = string
        volume_name     = string
      })))
      secondary_ip_enabled = optional(bool) # Default: false
      subnet_id            = string
      virtual_machine_configuration = object({
        image = object({
          offer     = string
          publisher = string
          sku       = string
          version   = string
        })
        os_profile = object({
          admin_username  = string
          ssh_private_key = string
          ssh_public_key  = string
        })
        virtual_machine_size = string
      })
      virtual_machine_resource_names = optional(object({
        data_disk = optional(list(object({
          names       = list(string)
          volume_name = string
        })))
        host_name               = optional(string)
        network_interface_names = optional(list(string))
        os_disk_name            = optional(string)
        virtual_machine_name    = optional(string)
      }))
    })
    identity = optional(object({
      identity_ids = set(string)
      type         = string
    }))
  }))
}

