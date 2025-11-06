variable "pip_map" {
  type = map(object({
    rg_key = string
    sku    = string
  }))
}

variable "rg_output" {
  type = map(object({
    name     = string
    location = string
  }))
}
