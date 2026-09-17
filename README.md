# Terraform Module for Azure Container Registry

Provisions an [Azure Container Registry](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry).
The caller owns the resource group, provider configuration, backend, and
Terraform state.

## Dependency Graph

```mermaid
graph LR
    caller[Calling root module] --> group[Existing Azure Resource Group]
    group --> registry[Azure Container Registry]
```

## Usage

```hcl
module "acr" {
  source              = "git::https://github.com/f2calv/tf_module_azurerm_container_registry.git//src?ref=0.3.0"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  acr_name            = "myregistry"
  tags = {
    environment = "dev"
  }
}
```

The resource group in this example is created by the calling root module and is
not managed by this module.

<!-- markdownlint-disable MD060 -->
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| terraform | >= 1.0 |
| azurerm | >= 5.0, < 6.0 |

## Providers

| Name | Version |
| ---- | ------- |
| azurerm | >= 5.0, < 6.0 |

## Resources

| Name | Type |
| ---- | ---- |
| [azurerm_container_registry.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| acr\_name | Name of the Azure Container Registry. | `string` | n/a | yes |
| resource\_group\_name | Name of the resource group. | `string` | n/a | yes |
| admin\_enabled | Is admin access to the registry enabled? | `bool` | `false` | no |
| location | Location of the parent resource group. | `string` | `"West Europe"` | no |
| sku | SKU tier for the registry (Basic, Standard, Premium). | `string` | `"Basic"` | no |
| tags | Any tags that should be present on the resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| id | The ID of the Container Registry. |
| location | The location of the Container Registry. |
| login\_server | The login server URL for the Container Registry. |
| name | The name of the Container Registry. |
<!-- END_TF_DOCS -->
<!-- markdownlint-enable MD060 -->

## Development

Regenerate the Terraform reference after changing resources, variables,
outputs, or version constraints:

```bash
terraform-docs --config .terraform-docs.yml src
```

The pre-commit configuration runs the same command in CI and fails when
generated documentation is not committed.
