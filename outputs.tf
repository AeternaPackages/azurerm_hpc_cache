# --- azurerm_hpc_cache ---
output "hpc_caches_id" {
  description = "Map of id values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_id
}

output "hpc_caches_automatically_rotate_key_to_latest_enabled" {
  description = "Map of automatically_rotate_key_to_latest_enabled values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_automatically_rotate_key_to_latest_enabled
}

output "hpc_caches_cache_size_in_gb" {
  description = "Map of cache_size_in_gb values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_cache_size_in_gb
}

output "hpc_caches_default_access_policy" {
  description = "Map of default_access_policy values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_default_access_policy
}

output "hpc_caches_directory_active_directory" {
  description = "Map of directory_active_directory values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_directory_active_directory
  sensitive   = true
}

output "hpc_caches_directory_flat_file" {
  description = "Map of directory_flat_file values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_directory_flat_file
}

output "hpc_caches_directory_ldap" {
  description = "Map of directory_ldap values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_directory_ldap
  sensitive   = true
}

output "hpc_caches_dns" {
  description = "Map of dns values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_dns
}

output "hpc_caches_identity" {
  description = "Map of identity values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_identity
}

output "hpc_caches_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_key_vault_key_id
}

output "hpc_caches_location" {
  description = "Map of location values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_location
}

output "hpc_caches_mount_addresses" {
  description = "Map of mount_addresses values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_mount_addresses
}

output "hpc_caches_mtu" {
  description = "Map of mtu values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_mtu
}

output "hpc_caches_name" {
  description = "Map of name values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_name
}

output "hpc_caches_ntp_server" {
  description = "Map of ntp_server values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_ntp_server
}

output "hpc_caches_resource_group_name" {
  description = "Map of resource_group_name values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_resource_group_name
}

output "hpc_caches_sku_name" {
  description = "Map of sku_name values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_sku_name
}

output "hpc_caches_subnet_id" {
  description = "Map of subnet_id values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_subnet_id
}

output "hpc_caches_tags" {
  description = "Map of tags values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = module.hpc_caches.hpc_caches_tags
}

# --- azurerm_hpc_cache_access_policy ---
output "hpc_cache_access_policies_id" {
  description = "Map of id values across all hpc_cache_access_policies, keyed the same as var.hpc_cache_access_policies"
  value       = module.hpc_cache_access_policies.hpc_cache_access_policies_id
}

output "hpc_cache_access_policies_access_rule" {
  description = "Map of access_rule values across all hpc_cache_access_policies, keyed the same as var.hpc_cache_access_policies"
  value       = module.hpc_cache_access_policies.hpc_cache_access_policies_access_rule
}

output "hpc_cache_access_policies_hpc_cache_id" {
  description = "Map of hpc_cache_id values across all hpc_cache_access_policies, keyed the same as var.hpc_cache_access_policies"
  value       = module.hpc_cache_access_policies.hpc_cache_access_policies_hpc_cache_id
}

output "hpc_cache_access_policies_name" {
  description = "Map of name values across all hpc_cache_access_policies, keyed the same as var.hpc_cache_access_policies"
  value       = module.hpc_cache_access_policies.hpc_cache_access_policies_name
}


