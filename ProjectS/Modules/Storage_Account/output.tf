# Outputs for the resources
output "azurerm_storage_account_name" {
  value       = azurerm_storage_account.storage_type.name
  description = "The name of the storage account"
}

output "azurerm_storage_container_name" {
  value       = azurerm_storage_container.container.name
  description = "The name of the storage container"
}

output "azurerm_virtual_network_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "The name of the virtual network"
}

output "subnet_id" {
  value       = azurerm_subnet.storage_subnet.id
  description = "The ID of the subnet"
}

output "vnet_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "The name of the virtual network"
}