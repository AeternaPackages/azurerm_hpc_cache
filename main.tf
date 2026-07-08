locals {
  hpc_caches = { for k1, v1 in var.hpc_caches : k1 => { automatically_rotate_key_to_latest_enabled = v1.automatically_rotate_key_to_latest_enabled, cache_size_in_gb = v1.cache_size_in_gb, default_access_policy = v1.default_access_policy, directory_active_directory = v1.directory_active_directory, directory_flat_file = v1.directory_flat_file, directory_ldap = v1.directory_ldap, dns = v1.dns, identity = v1.identity, key_vault_key_id = v1.key_vault_key_id, location = v1.location, mtu = v1.mtu, name = v1.name, ntp_server = v1.ntp_server, resource_group_name = v1.resource_group_name, sku_name = v1.sku_name, subnet_id = v1.subnet_id, tags = v1.tags } }

  hpc_cache_access_policies = merge([
    for k1, v1 in var.hpc_caches : {
      for k2, v2 in coalesce(v1.hpc_cache_access_policies, {}) :
      "${k1}/${k2}" => merge(v2, {
        hpc_cache_id = module.hpc_caches.hpc_caches["${k1}"].id
      })
    }
  ]...)
}

module "hpc_caches" {
  source     = "git::https://github.com/AeternaModules/azurerm_hpc_cache.git?ref=v4.80.0"
  hpc_caches = local.hpc_caches
}

module "hpc_cache_access_policies" {
  source                    = "git::https://github.com/AeternaModules/azurerm_hpc_cache_access_policy.git?ref=v4.80.0"
  hpc_cache_access_policies = local.hpc_cache_access_policies
  depends_on                = [module.hpc_caches]
}

