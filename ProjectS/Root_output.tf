output "resource_group_name" {
  value = module.rg.rgname_module  # Access the output of rg module (resource group name)
}

output "resource_group_location" {
  value = module.rg.rglocation_module  # Access the output of rg module (resource group location)
}

# Access AKS Outputs
output "aks_cluster_name" {
  value = module.aks.aks_cluster_name
}

output "aks_cluster_id" {
  value = module.aks.aks_cluster_id
}

# Access ACR Outputs
output "acr_name" {
  value = module.acr.acr_name
}

output "acr_id" {
  value = module.acr.acr_id
}


# Outputs from the storage module
output "storage_account_name" {
  value = module.storage.azurerm_storage_account_name
}

output "storage_container_name" {
  value = module.storage.azurerm_storage_container_name
}

output "virtual_network_name" {
  value = module.storage.azurerm_virtual_network_name
}

output "subnet_id" {
  value = module.storage.subnet_id
}

output "vnet_name" {
  value = module.storage.vnet_name
}