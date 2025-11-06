variable "nic_map" {
  type = map(object({
    rg_key     = string
    subnet_key = string
    pip_key    = string
  }))
}

variable "rg_output" {
  type = map(object({ name = string, location = string }))
}

variable "subnet_output" {
  type = map(object({ id = string }))
}

variable "pip_output" {
  type = map(object({
    id         = string
    ip_address = string
  }))
}
