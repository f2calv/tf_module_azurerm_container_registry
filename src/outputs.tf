output "id" {
  description = "The ID of the Container Registry."
  value       = azurerm_container_registry.this.id
}

output "name" {
  description = "The name of the Container Registry."
  value       = azurerm_container_registry.this.name
}

output "location" {
  description = "The location of the Container Registry."
  value       = azurerm_container_registry.this.location
}

output "login_server" {
  description = "The login server URL for the Container Registry."
  value       = azurerm_container_registry.this.login_server
}
