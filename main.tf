module "rg" {
  source = "./modules/rg"
  rg_map = var.rg_map
}

module "vnet" {
  source    = "./modules/vnet"
  vnet_map  = var.vnet_map
  rg_output = module.rg.rg_output
}

module "subnet" {
  source      = "./modules/subnet"
  subnet_map  = var.subnet_map
  vnet_output = module.vnet.vnet_output
}

module "pip" {
  source    = "./modules/pip"
  pip_map   = var.pip_map
  rg_output = module.rg.rg_output
}

module "nic" {
  source        = "./modules/nic"
  nic_map       = var.nic_map
  rg_output     = module.rg.rg_output
  subnet_output = module.subnet.subnet_output
  pip_output    = module.pip.pip_output
}

module "storage" {
  source      = "./modules/storage"
  storage_map = var.storage_map
  rg_output   = module.rg.rg_output
}

module "vm" {
  source     = "./modules/vm"
  vm_map     = var.vm_map
  rg_output  = module.rg.rg_output
  nic_output = module.nic.nic_output
}

# module "keyvault" {
#   source       = "./modules/keyvault"
#   keyvault_map = var.keyvault_map
#   rg_output    = module.rg.rg_output
# }
