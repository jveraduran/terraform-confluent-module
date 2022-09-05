## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_confluent"></a> [confluent](#requirement\_confluent) | 1.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_confluent"></a> [confluent](#provider\_confluent) | 1.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [confluent_api_key.main](https://registry.terraform.io/providers/confluentinc/confluent/1.4.0/docs/resources/api_key) | resource |
| [confluent_environment.main](https://registry.terraform.io/providers/confluentinc/confluent/1.4.0/docs/resources/environment) | resource |
| [confluent_kafka_cluster.basic](https://registry.terraform.io/providers/confluentinc/confluent/1.4.0/docs/resources/kafka_cluster) | resource |
| [confluent_kafka_cluster.dedicated](https://registry.terraform.io/providers/confluentinc/confluent/1.4.0/docs/resources/kafka_cluster) | resource |
| [confluent_kafka_cluster.standard](https://registry.terraform.io/providers/confluentinc/confluent/1.4.0/docs/resources/kafka_cluster) | resource |
| [confluent_role_binding.main](https://registry.terraform.io/providers/confluentinc/confluent/1.4.0/docs/resources/role_binding) | resource |
| [confluent_service_account.main](https://registry.terraform.io/providers/confluentinc/confluent/1.4.0/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability"></a> [availability](#input\_availability) | n/a | `string` | `null` | no |
| <a name="input_cku_number"></a> [cku\_number](#input\_cku\_number) | n/a | `number` | `null` | no |
| <a name="input_cloud"></a> [cloud](#input\_cloud) | n/a | `string` | `null` | no |
| <a name="input_create_api_key"></a> [create\_api\_key](#input\_create\_api\_key) | n/a | `bool` | `false` | no |
| <a name="input_create_basic_cluster"></a> [create\_basic\_cluster](#input\_create\_basic\_cluster) | n/a | `bool` | `false` | no |
| <a name="input_create_dedicated_cluster"></a> [create\_dedicated\_cluster](#input\_create\_dedicated\_cluster) | n/a | `bool` | `false` | no |
| <a name="input_create_standard_cluster"></a> [create\_standard\_cluster](#input\_create\_standard\_cluster) | n/a | `bool` | `false` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | n/a | `string` | `null` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `map(string)` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `null` | no |
| <a name="input_service_account_description"></a> [service\_account\_description](#input\_service\_account\_description) | n/a | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_key"></a> [api\_key](#output\_api\_key) | n/a |
| <a name="output_api_secret"></a> [api\_secret](#output\_api\_secret) | n/a |
| <a name="output_basic_cluster_id"></a> [basic\_cluster\_id](#output\_basic\_cluster\_id) | n/a |
| <a name="output_dedicated_cluster_id"></a> [dedicated\_cluster\_id](#output\_dedicated\_cluster\_id) | n/a |
| <a name="output_environment"></a> [environment](#output\_environment) | n/a |
| <a name="output_standard_cluster_id"></a> [standard\_cluster\_id](#output\_standard\_cluster\_id) | n/a |
