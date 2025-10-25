variable "resource_group_name" {
  type        = string
  description = "Name of the resource group."
}
variable "location" {
  type        = string
  description = "Location of the parent resource group."
  default     = "West Europe"
}
variable "tags" {
  type        = map(string)
  description = "Any tags that should be present on the resources."
  default     = {}
}
variable "acr_name" {
  type        = string
  description = "Name of the Azure Container Registry."
}
variable "admin_enabled" {
  type        = bool
  description = "Is admin access to the registry enabled?"
  default     = false
}
