module "resource_group-mod-b" {
  source   = "../../Modules/Resource_group"
  child_rg = var.parent_rg
}

module "stg-mod-b" {
  depends_on = [module.resource_group-mod-b]
  source     = "../../Modules/Storage Account"
  child-stg  = var.parent_stg
}

module "cont-mod-b" {
  depends_on = [module.stg-mod-b]
  source     = "../../Modules/Container"
  child_cont = var.parent_cont
}

module "vnet-mod-b" {
  depends_on = [module.resource_group-mod-b]
  source     = "../../Modules/Virtual Network"
  vnet_child = var.parent_vnet
}

module "subnet_mod_b" {
  depends_on   = [module.vnet-mod-b]
  source       = "../../Modules/Subnet"
  subnet_child = var.parent_subnet
}