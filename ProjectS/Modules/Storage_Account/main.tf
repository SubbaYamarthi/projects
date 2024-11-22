resource "azurerm_storage_account" "storage_type" {
  name                     = var.stgname
  resource_group_name       = var.resource_group_name
  location                 = var.stglocation
  account_tier              = "Standard"
  account_replication_type = "LRS"

  # Add VNet Integration here
  network_rules {
    default_action = "Deny"  # Default action for traffic that doesn't match any rule
    
    virtual_network_subnet_ids = [
      azurerm_subnet.storage_subnet.id  # Reference to the subnet in the VNet
    ]
  }
}


resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.storage_type.name
  container_access_type = "private"
}


resource "azurerm_virtual_network" "vnet" {
  name                = "my-vnet"
  location            = var.stglocation
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "storage_subnet" {
  name                 = "storage-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]

  service_endpoints = ["Microsoft.Storage"]
}
