variable "rg_map" {
  type = map(object({ location = string }))
}

variable "vnet_map" {
  type = map(object({
    rg_key        = string
    address_space = list(string)
  }))
}

variable "subnet_map" {
  type = map(object({
    vnet_key       = string
    address_prefix = string
  }))
}

variable "pip_map" {
  type = map(object({
    rg_key = string
    sku    = string
  }))
}

variable "nic_map" {
  type = map(object({
    rg_key     = string
    subnet_key = string
    pip_key    = string
  }))
}

variable "storage_map" {
  type = map(object({
    rg_key       = string
    account_tier = string
    replication  = string
  }))
}

variable "vm_map" {
  type = map(object({
    rg_key     = string
    size       = string
    admin_user = string
    admin_pass = string
    nic_key    = string
    os_type    = string # "Windows" or "Linux"
  }))
}

# variable "keyvault_map" {
#   type = map(object({
#     rg_key   = string
#     sku_name = string
#     enabled  = bool
#   }))
# }
