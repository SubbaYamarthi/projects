variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "my-aks-cluster"
}

variable "location" {
  description = "The Azure region where the AKS cluster will be deployed"
  type        = string
  default     = "East US"
}

variable "rgname" {
  description = "The name of the resource group"
  type        = string
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use for the AKS cluster"
  type        = string
  default     = "1.21.2"
}

variable "node_pool_name" {
  description = "The name of the default node pool"
  type        = string
  default     = "default"
}

variable "node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "The VM size for the AKS node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "aks_subnet_id" {
  description = "The subnet ID for the AKS cluster"
  type        = string
}

variable "identity_type" {
  description = "The type of identity for the AKS cluster"
  type        = string
  default     = "SystemAssigned"
}

variable "tags" {
  description = "Tags for the AKS cluster"
  type        = map(string)
  default     = {
    environment = "production"
  }
}
variable "region" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "eastus"  # You can set a default region or leave it without a default to pass it as an input variable
}
