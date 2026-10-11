output "access_context_manager_access_level_conditions_id" {
  description = "Map of id values across all access_context_manager_access_level_conditions, keyed the same as var.access_context_manager_access_level_conditions except keys with no id are omitted"
  value       = { for k, v in google_access_context_manager_access_level_condition.access_context_manager_access_level_conditions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "access_context_manager_access_level_conditions_access_level" {
  description = "Map of access_level values across all access_context_manager_access_level_conditions, keyed the same as var.access_context_manager_access_level_conditions except keys with no access_level are omitted"
  value       = { for k, v in google_access_context_manager_access_level_condition.access_context_manager_access_level_conditions : k => v.access_level if v.access_level != null && length(v.access_level) > 0 }
}
output "access_context_manager_access_level_conditions_access_policy_id" {
  description = "Map of access_policy_id values across all access_context_manager_access_level_conditions, keyed the same as var.access_context_manager_access_level_conditions except keys with no access_policy_id are omitted"
  value       = { for k, v in google_access_context_manager_access_level_condition.access_context_manager_access_level_conditions : k => v.access_policy_id if v.access_policy_id != null && length(v.access_policy_id) > 0 }
}
output "access_context_manager_access_level_conditions_deletion_policy" {
  description = "Map of deletion_policy values across all access_context_manager_access_level_conditions, keyed the same as var.access_context_manager_access_level_conditions except keys with no deletion_policy are omitted"
  value       = { for k, v in google_access_context_manager_access_level_condition.access_context_manager_access_level_conditions : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "access_context_manager_access_level_conditions_device_policy" {
  description = "Map of device_policy values across all access_context_manager_access_level_conditions, keyed the same as var.access_context_manager_access_level_conditions except keys with no device_policy are omitted"
  value       = { for k, v in google_access_context_manager_access_level_condition.access_context_manager_access_level_conditions : k => one(v.device_policy) if v.device_policy != null && length(v.device_policy) > 0 }
}
output "access_context_manager_access_level_conditions_ip_subnetworks" {
  description = "Map of ip_subnetworks values across all access_context_manager_access_level_conditions, keyed the same as var.access_context_manager_access_level_conditions except keys with no ip_subnetworks are omitted"
  value       = { for k, v in google_access_context_manager_access_level_condition.access_context_manager_access_level_conditions : k => v.ip_subnetworks if v.ip_subnetworks != null && length(v.ip_subnetworks) > 0 }
}
output "access_context_manager_access_level_conditions_members" {
  description = "Map of members values across all access_context_manager_access_level_conditions, keyed the same as var.access_context_manager_access_level_conditions except keys with no members are omitted"
  value       = { for k, v in google_access_context_manager_access_level_condition.access_context_manager_access_level_conditions : k => v.members if v.members != null && length(v.members) > 0 }
}
output "access_context_manager_access_level_conditions_negate" {
  description = "Map of negate values across all access_context_manager_access_level_conditions, keyed the same as var.access_context_manager_access_level_conditions except keys with no negate are omitted"
  value       = { for k, v in google_access_context_manager_access_level_condition.access_context_manager_access_level_conditions : k => v.negate if v.negate != null }
}
output "access_context_manager_access_level_conditions_regions" {
  description = "Map of regions values across all access_context_manager_access_level_conditions, keyed the same as var.access_context_manager_access_level_conditions except keys with no regions are omitted"
  value       = { for k, v in google_access_context_manager_access_level_condition.access_context_manager_access_level_conditions : k => v.regions if v.regions != null && length(v.regions) > 0 }
}
output "access_context_manager_access_level_conditions_required_access_levels" {
  description = "Map of required_access_levels values across all access_context_manager_access_level_conditions, keyed the same as var.access_context_manager_access_level_conditions except keys with no required_access_levels are omitted"
  value       = { for k, v in google_access_context_manager_access_level_condition.access_context_manager_access_level_conditions : k => v.required_access_levels if v.required_access_levels != null && length(v.required_access_levels) > 0 }
}
output "access_context_manager_access_level_conditions_vpc_network_sources" {
  description = "Map of vpc_network_sources values across all access_context_manager_access_level_conditions, keyed the same as var.access_context_manager_access_level_conditions except keys with no vpc_network_sources are omitted"
  value       = { for k, v in google_access_context_manager_access_level_condition.access_context_manager_access_level_conditions : k => v.vpc_network_sources if v.vpc_network_sources != null && length(v.vpc_network_sources) > 0 }
}

