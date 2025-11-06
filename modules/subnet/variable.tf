variable "subnet_map" {
  type = map(object({
    vnet_key       = string
    address_prefix = string
  }))
}

variable "vnet_output" {
  type = map(object({
    id             = string
    name           = string
    resource_group = string
    location       = string
  }))
}
