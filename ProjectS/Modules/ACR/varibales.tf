variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "location" {
  description = "The Azure region where the ACR will be deployed"
  type        = string
  default     = "East US"
}

variable "rgname" {
  description = "The name of the resource group"
  type        = string
}

variable "acr_sku" {
  description = "The SKU of the Azure Container Registry (Basic, Standard, Premium)"
  type        = string
  default     = "Standard"
}

variable "acr_admin_enabled" {
  description = "Whether the admin user should be enabled for the Azure Container Registry"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags for the Azure Container Registry"
  type        = map(string)
  default     = {
    environment = "production"
  }
}

variable "replication_location" {
  description = "The Azure region for replication of the Azure Container Registry"
  type        = string
  default     = "West US"
}
