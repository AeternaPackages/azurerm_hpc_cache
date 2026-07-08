variable "hpc_caches" {
  description = <<EOT
Map of hpc_caches, attributes below
Required:
    - cache_size_in_gb
    - location
    - name
    - resource_group_name
    - sku_name
    - subnet_id
Optional:
    - automatically_rotate_key_to_latest_enabled
    - key_vault_key_id
    - mtu
    - ntp_server
    - tags
    - default_access_policy (block)
    - directory_active_directory (block)
    - directory_flat_file (block)
    - directory_ldap (block)
    - dns (block)
    - identity (block)
Nested hpc_cache_access_policies (azurerm_hpc_cache_access_policy):
    Required:
        - name
        - access_rule (block)
EOT

  type = map(object({
    cache_size_in_gb                           = number
    location                                   = string
    name                                       = string
    resource_group_name                        = string
    sku_name                                   = string
    subnet_id                                  = string
    automatically_rotate_key_to_latest_enabled = optional(bool)
    key_vault_key_id                           = optional(string)
    mtu                                        = optional(number) # Default: 1500
    ntp_server                                 = optional(string) # Default: "time.windows.com"
    tags                                       = optional(map(string))
    default_access_policy = optional(object({
      access_rule = list(object({
        access                  = string
        anonymous_gid           = optional(number)
        anonymous_uid           = optional(number)
        filter                  = optional(string)
        root_squash_enabled     = optional(bool)
        scope                   = string
        submount_access_enabled = optional(bool)
        suid_enabled            = optional(bool)
      }))
    }))
    directory_active_directory = optional(object({
      cache_netbios_name  = string
      dns_primary_ip      = string
      dns_secondary_ip    = optional(string)
      domain_name         = string
      domain_netbios_name = string
      password            = string
      username            = string
    }))
    directory_flat_file = optional(object({
      group_file_uri    = string
      password_file_uri = string
    }))
    directory_ldap = optional(object({
      base_dn = string
      bind = optional(object({
        dn       = string
        password = string
      }))
      certificate_validation_uri         = optional(string)
      download_certificate_automatically = optional(bool)
      encrypted                          = optional(bool)
      server                             = string
    }))
    dns = optional(object({
      search_domain = optional(string)
      servers       = list(string)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    hpc_cache_access_policies = optional(map(object({
      name = string
      access_rule = list(object({
        access                  = string
        anonymous_gid           = optional(number)
        anonymous_uid           = optional(number)
        filter                  = optional(string)
        root_squash_enabled     = optional(bool)
        scope                   = string
        submount_access_enabled = optional(bool)
        suid_enabled            = optional(bool)
      }))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.hpc_caches) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.hpc_caches : [for kk in keys(coalesce(v0.hpc_cache_access_policies, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
