variable "vm_map" {
  type = map(object({
    rg_key     = string
    size       = string
    admin_user = string
    admin_pass = string
    nic_key    = string
    os_type    = string
  }))
}

variable "rg_output" {
  type = map(object({ name = string, location = string }))
}

variable "nic_output" {
  type = map(object({
    id        = string
    private_ip= string
    pip_key   = string
  }))
}
