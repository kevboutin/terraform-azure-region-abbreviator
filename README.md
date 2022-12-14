# terraform-azure-region-abbreviator
This terraform module provides a way to get a meaningful abbreviated version for a region in Azure.
For example, "eastus2" becomes "eus2". This module also always outputs a map for every region, which allows you to do multiple at once.

This module does not communicate with Azure in any way.

## Usage

Basic usage of this module is as follows:

```hcl
module "utils" {
  source  = "terraform-azure-region-abbreviator/utils/azure"
  version = "~> 0.3"
  region  = "eastus2"
}

locals {
  "eastus2" = module.utils.region_short_name
}
```

The above results in locals with computed values of:

```
locals {
  "eastus2" = "eus2"
}
```

Functional examples are included in the
[examples](./examples/) directory.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| region | The Azure region to retrieve a short name for (ex. `eastus2`). | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| region\_short\_name | The three to four character shortname of the region specified in var.region. |
| region\_short\_name\_map | The three to four character shortname of any given region. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

These sections describe requirements for using this module.

### Software

The following dependencies must be available:

- [Terraform][terraform] >= v0.12, < v0.14

### RBAC

An Azure RBAC is not needed for to use this module.

### APIs

Projects/APIs are not required to use this module.

## Contributing

Refer to the [contribution guidelines](./CONTRIBUTING.md) for
information on contributing to this module.
