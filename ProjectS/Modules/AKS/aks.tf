resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.rgname
  dns_prefix          = "aks-${var.cluster_name}"
  kubernetes_version  = var.kubernetes_version
  node_resource_group = "MC_${var.rgname}_${var.cluster_name}_${var.region}"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_DS2_v2"
    vnet_subnet_id  = var.aks_subnet_id
  }

  network_profile {
    network_plugin     = "azure"
    service_cidr       = "10.1.0.0/16"
    dns_service_ip     = "10.1.0.10"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "production"
  }
}
