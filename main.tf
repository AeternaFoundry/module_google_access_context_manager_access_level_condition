resource "google_access_context_manager_access_level_condition" "access_context_manager_access_level_conditions" {
  for_each = var.access_context_manager_access_level_conditions

  access_level           = each.value.access_level
  deletion_policy        = each.value.deletion_policy
  ip_subnetworks         = each.value.ip_subnetworks
  members                = each.value.members
  negate                 = each.value.negate
  regions                = each.value.regions
  required_access_levels = each.value.required_access_levels

  dynamic "device_policy" {
    for_each = each.value.device_policy != null ? [each.value.device_policy] : []
    content {
      allowed_device_management_levels = device_policy.value.allowed_device_management_levels
      allowed_encryption_statuses      = device_policy.value.allowed_encryption_statuses
      dynamic "os_constraints" {
        for_each = device_policy.value.os_constraints != null ? device_policy.value.os_constraints : []
        content {
          minimum_version = os_constraints.value.minimum_version
          os_type         = os_constraints.value.os_type
        }
      }
      require_admin_approval = device_policy.value.require_admin_approval
      require_corp_owned     = device_policy.value.require_corp_owned
      require_screen_lock    = device_policy.value.require_screen_lock
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }

  dynamic "vpc_network_sources" {
    for_each = each.value.vpc_network_sources != null ? each.value.vpc_network_sources : []
    content {
      dynamic "vpc_subnetwork" {
        for_each = vpc_network_sources.value.vpc_subnetwork != null ? [vpc_network_sources.value.vpc_subnetwork] : []
        content {
          network            = vpc_subnetwork.value.network
          vpc_ip_subnetworks = vpc_subnetwork.value.vpc_ip_subnetworks
        }
      }
    }
  }
}

