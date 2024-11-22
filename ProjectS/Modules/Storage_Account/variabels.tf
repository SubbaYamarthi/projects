variable "resource_group_name" {
  type = string
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}


variable "stglocation" {
  type = string
}

variable "stgname" {
  type        = string
  description = "Name for the storage account"
  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.stgname))
    error_message = "The storage account name must contain only lowercase letters and numbers, and be 3-24 characters long."
  }
}


variable "container_name" {
  type = string
}
