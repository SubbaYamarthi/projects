resource "azurerm_container_registry" "acr_registry" {
  name                = "${var.acr_name}${random_id.acr_suffix.hex}"
  location            = var.location
  resource_group_name = var.rgname
  sku                 = var.acr_sku
}

resource "random_id" "acr_suffix" {
  byte_length = 2
}
