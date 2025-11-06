variable "storage_map" {
  type = map(object({
    rg_key       = string
    account_tier = string
    replication  = string
  }))
}

variable "rg_output" {
  type = map(object({ name = string, location = string }))
}
