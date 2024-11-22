module "rg" {
  source    = "./Modules/Resource_Group"
  rgname    = var.rgname
  rglocation = var.rglocation
}


# output "rgname_module" {
#   value = azurerm_resource_group.rg.name
# }

# output "resource_group_name" {
#   value = module.rg.rgname_module  # Access the output of rg module (resource group name)
# }

module "storage" {
  source              = "./Modules/Storage_Account"
  resource_group_name = module.rg.rgname_module
  stglocation         = var.stglocation
  stgname             = var.stgname
  vnet_name           = "my-vnet"  # vnet_name should be passed as a variable
  container_name      = var.container_name
}


module "aks" {
  source                = "./Modules/AKS"
  cluster_name          = "myakscluster"
  location              = module.rg.rglocation_module
  rgname                = module.rg.rgname_module
  kubernetes_version    = "1.31.1"
  aks_subnet_id         = module.storage.subnet_id  # Reference output from storage module
}

module "acr" {
  source                = "./Modules/ACR"
  acr_name              = "myacr"
  location              = module.rg.rglocation_module
  rgname                = module.rg.rgname_module
  acr_sku               = "Standard"
  acr_admin_enabled     = true
  replication_location  = "West US"
}
