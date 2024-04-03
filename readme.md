# Preconfigured Terraform module for `github_team`.

[![pre_commit](https://github.com/Inetum-Poland/tf-module-github-team/actions/workflows/pre_commit.yml/badge.svg)](https://github.com/Inetum-Poland/tf-module-github-team/actions/workflows/pre_commit.yml) [![trufflehog](https://github.com/Inetum-Poland/tf-module-github-team/actions/workflows/trufflehog.yaml/badge.svg)](https://github.com/Inetum-Poland/tf-module-github-team/actions/workflows/trufflehog.yaml)

This module creates a preconfigured GitHub team.

> [!IMPORTANT]
> __This repository uses the [Conventional Commits](https://www.conventionalcommits.org/).__
>
> For more information please see the [Conventional Commits documentation](https://www.conventionalcommits.org/en/v1.0.0/#summary).

> [!IMPORTANT]
> __This repository uses the [pre-commit](https://pre-commit.com/).__
>
> Please be respectful while contributing and after cloning this repo install the pre-commit hooks.
> ```bash
> > pre-commit install --install-hooks -t pre-commit -t commit-msg
> ```
> For more information please see the [pre-commit documentation](https://pre-commit.com/).

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 6.2.1 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.0 |

## Resources

| Name | Type |
|------|------|
| [github_organization_security_manager.security](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_security_manager) | resource |
| [github_team.team](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_default_maintainer"></a> [create\_default\_maintainer](#input\_create\_default\_maintainer) | Whether to create the default maintainer. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the team. | `string` | `null` | no |
| <a name="input_ldap_dn"></a> [ldap\_dn](#input\_ldap\_dn) | The LDAP DN of the team. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the team. | `string` | n/a | yes |
| <a name="input_parent_team_id"></a> [parent\_team\_id](#input\_parent\_team\_id) | The ID of the parent team. | `string` | `null` | no |
| <a name="input_privacy"></a> [privacy](#input\_privacy) | The level of privacy for the team. | `string` | `"secret"` | no |
| <a name="input_security_manager"></a> [security\_manager](#input\_security\_manager) | Whether to create the security manager. | `bool` | `false` | no |

## Modules

No modules.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_out"></a> [out](#output\_out) | Team settings object `github_team`. |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->

## Contributions

This module is created by Inetum Poland. Feel free to contribute to it.
