variable "vnet_map" {
  type = map(object({
    rg_key        = string
    address_space = list(string)
  }))
}

variable "rg_output" {
  type = map(object({
    name     = string
    location = string
  }))
}
