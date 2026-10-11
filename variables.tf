variable "access_context_manager_access_level_conditions" {
  description = <<EOT
Map of access_context_manager_access_level_conditions, attributes below
Required:
    - access_level
Optional:
    - deletion_policy
    - ip_subnetworks
    - members
    - negate
    - regions
    - required_access_levels
    - device_policy (block):
        - allowed_device_management_levels (optional)
        - allowed_encryption_statuses (optional)
        - os_constraints (optional, block):
            - minimum_version (optional)
            - os_type (required)
        - require_admin_approval (optional)
        - require_corp_owned (optional)
        - require_screen_lock (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
    - vpc_network_sources (block):
        - vpc_subnetwork (optional, block):
            - network (required)
            - vpc_ip_subnetworks (optional)
EOT

  type = map(object({
    access_level           = string
    deletion_policy        = optional(string)
    ip_subnetworks         = optional(list(string))
    members                = optional(list(string))
    negate                 = optional(bool)
    regions                = optional(list(string))
    required_access_levels = optional(list(string))
    device_policy = optional(object({
      allowed_device_management_levels = optional(list(string))
      allowed_encryption_statuses      = optional(list(string))
      os_constraints = optional(list(object({
        minimum_version = optional(string)
        os_type         = string
      })))
      require_admin_approval = optional(bool)
      require_corp_owned     = optional(bool)
      require_screen_lock    = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
    vpc_network_sources = optional(list(object({
      vpc_subnetwork = optional(object({
        network            = string
        vpc_ip_subnetworks = optional(list(string))
      }))
    })))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

