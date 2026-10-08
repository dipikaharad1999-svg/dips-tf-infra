module "resource_group" {
  source            = "../Child_module/az_rg"
  resource_variable = var.resource_variable
}
module "azurerm_vnet" {
  depends_on    = [module.resource_group]
  source        = "../Child_module/az_vnet"
  vnet_variable = var.vnet_variable
}
module "azurerm_subnet" {
  depends_on      = [module.azurerm_vnet]
  source          = "../Child_module/az_subnet"
  subnet_variable = var.subnet_variable
}
module "azurerm_storage_account" {
  depends_on              = [module.resource_group]
  source                  = "../Child_module/storage_account"
  storageaccount_variable = var.storageaccount_variable
}