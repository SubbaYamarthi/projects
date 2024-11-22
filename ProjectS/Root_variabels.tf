variable "rgname" {
  description = "Name of the resource group"
  type        = string
}

variable "rglocation" {
  description = "Location of the resource group"
  type        = string
}

variable "stgname" {
  description = "Name of the storage account"
  type        = string
}

variable "stglocation" {
  description = "Location of the storage account"
  type        = string
}

variable "container_name" {
  description = "The name of the storage container"
  type        = string
}
