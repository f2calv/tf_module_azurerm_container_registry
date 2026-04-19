# Terraform Module: Azure Container Registry

Provisions an [Azure Container Registry](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry).

## Usage

```hcl
module "acr" {
  source              = "git::https://github.com/f2calv/tf_module_azurerm_container_registry.git//src?ref=main"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  acr_name            = "myregistry"
  tags                = { environment = "dev" }
}
```

## Variables

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| `resource_group_name` | `string` | — | Name of the resource group |
| `location` | `string` | `West Europe` | Location of the parent resource group |
| `acr_name` | `string` | — | Name of the Azure Container Registry |
| `sku` | `string` | `Basic` | SKU tier for the registry (Basic, Standard, Premium) |
| `admin_enabled` | `bool` | `false` | Is admin access to the registry enabled? |
| `tags` | `map(string)` | `{}` | Any tags that should be present on the resources |

## Outputs

| Name | Description |
| --- | --- |
| `id` | The ID of the Container Registry |
| `name` | The name of the Container Registry |
| `location` | The location of the Container Registry |
| `login_server` | The login server URL for the Container Registry |
