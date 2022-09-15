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
| <a name="output_api_key"></a> [api\_key](#output\_api\_key) | (Required String) The ID of the API Key, for example, EGWX3S4BVNQIRBMJ |
| <a name="output_api_secret"></a> [api\_secret](#output\_api\_secret) | (Required String, Sensitive) The secret of the API Key. |
| <a name="output_basic_cluster_api_kind"></a> [basic\_cluster\_api\_kind](#output\_basic\_cluster\_api\_kind) | (Required String) A kind of the Kafka cluster, for example, Cluster. |
| <a name="output_basic_cluster_api_version"></a> [basic\_cluster\_api\_version](#output\_basic\_cluster\_api\_version) | (Required String) An API Version of the schema version of the Kafka cluster, for example, cmk/v2. |
| <a name="output_basic_cluster_bootstrap_endpoint"></a> [basic\_cluster\_bootstrap\_endpoint](#output\_basic\_cluster\_bootstrap\_endpoint) | (Required String) The bootstrap endpoint used by Kafka clients to connect to the Kafka cluster. (e.g., SASL\_SSL://pkc-00000.us-central1.gcp.confluent.cloud:9092). |
| <a name="output_basic_cluster_id"></a> [basic\_cluster\_id](#output\_basic\_cluster\_id) | (Required String) The ID of the Kafka cluster (e.g., lkc-abc123). |
| <a name="output_basic_cluster_rbac_crn"></a> [basic\_cluster\_rbac\_crn](#output\_basic\_cluster\_rbac\_crn) | (Required String) The Confluent Resource Name of the Kafka cluster, for example, crn://confluent.cloud/organization=1111aaaa-11aa-11aa-11aa-111111aaaaaa/environment=env-abc123/cloud-cluster=lkc-abc123 |
| <a name="output_basic_cluster_rest_endpoint"></a> [basic\_cluster\_rest\_endpoint](#output\_basic\_cluster\_rest\_endpoint) | (Required String) The REST endpoint of the Kafka cluster (e.g., https://pkc-00000.us-central1.gcp.confluent.cloud:443). |
| <a name="output_confluent_environment_display_name"></a> [confluent\_environment\_display\_name](#output\_confluent\_environment\_display\_name) | The Display Name of the Environment |
| <a name="output_confluent_environment_id"></a> [confluent\_environment\_id](#output\_confluent\_environment\_id) | The ID of the Environment, for example, env-abc123 |
| <a name="output_confluent_role_binding_id"></a> [confluent\_role\_binding\_id](#output\_confluent\_role\_binding\_id) | (Required String) The ID of the Role Binding (e.g., rb-f3a90de). |
| <a name="output_confluent_service_account_api_version"></a> [confluent\_service\_account\_api\_version](#output\_confluent\_service\_account\_api\_version) | (Required String) An API Version of the schema version of the Service Account, for example, iam/v2. |
| <a name="output_confluent_service_account_id"></a> [confluent\_service\_account\_id](#output\_confluent\_service\_account\_id) | (Required String) The ID of the Service Account (e.g., sa-abc123). |
| <a name="output_confluent_service_account_kind"></a> [confluent\_service\_account\_kind](#output\_confluent\_service\_account\_kind) | (Required String) A kind of the Service Account, for example, ServiceAccount |
| <a name="output_dedicated_cluster_api_kind"></a> [dedicated\_cluster\_api\_kind](#output\_dedicated\_cluster\_api\_kind) | (Required String) A kind of the Kafka cluster, for example, Cluster. |
| <a name="output_dedicated_cluster_api_version"></a> [dedicated\_cluster\_api\_version](#output\_dedicated\_cluster\_api\_version) | (Required String) An API Version of the schema version of the Kafka cluster, for example, cmk/v2. |
| <a name="output_dedicated_cluster_bootstrap_endpoint"></a> [dedicated\_cluster\_bootstrap\_endpoint](#output\_dedicated\_cluster\_bootstrap\_endpoint) | (Required String) The bootstrap endpoint used by Kafka clients to connect to the Kafka cluster. (e.g., SASL\_SSL://pkc-00000.us-central1.gcp.confluent.cloud:9092). |
| <a name="output_dedicated_cluster_id"></a> [dedicated\_cluster\_id](#output\_dedicated\_cluster\_id) | (Required String) The ID of the Kafka cluster (e.g., lkc-abc123). |
| <a name="output_dedicated_cluster_rbac_crn"></a> [dedicated\_cluster\_rbac\_crn](#output\_dedicated\_cluster\_rbac\_crn) | (Required String) The Confluent Resource Name of the Kafka cluster, for example, crn://confluent.cloud/organization=1111aaaa-11aa-11aa-11aa-111111aaaaaa/environment=env-abc123/cloud-cluster=lkc-abc123 |
| <a name="output_dedicated_cluster_rest_endpoint"></a> [dedicated\_cluster\_rest\_endpoint](#output\_dedicated\_cluster\_rest\_endpoint) | (Required String) The REST endpoint of the Kafka cluster (e.g., https://pkc-00000.us-central1.gcp.confluent.cloud:443). |
| <a name="output_standard_cluster_api_kind"></a> [standard\_cluster\_api\_kind](#output\_standard\_cluster\_api\_kind) | (Required String) A kind of the Kafka cluster, for example, Cluster. |
| <a name="output_standard_cluster_api_version"></a> [standard\_cluster\_api\_version](#output\_standard\_cluster\_api\_version) | (Required String) An API Version of the schema version of the Kafka cluster, for example, cmk/v2. |
| <a name="output_standard_cluster_bootstrap_endpoint"></a> [standard\_cluster\_bootstrap\_endpoint](#output\_standard\_cluster\_bootstrap\_endpoint) | (Required String) The bootstrap endpoint used by Kafka clients to connect to the Kafka cluster. (e.g., SASL\_SSL://pkc-00000.us-central1.gcp.confluent.cloud:9092). |
| <a name="output_standard_cluster_id"></a> [standard\_cluster\_id](#output\_standard\_cluster\_id) | (Required String) The ID of the Kafka cluster (e.g., lkc-abc123). |
| <a name="output_standard_cluster_rbac_crn"></a> [standard\_cluster\_rbac\_crn](#output\_standard\_cluster\_rbac\_crn) | (Required String) The Confluent Resource Name of the Kafka cluster, for example, crn://confluent.cloud/organization=1111aaaa-11aa-11aa-11aa-111111aaaaaa/environment=env-abc123/cloud-cluster=lkc-abc123 |
| <a name="output_standard_cluster_rest_endpoint"></a> [standard\_cluster\_rest\_endpoint](#output\_standard\_cluster\_rest\_endpoint) | (Required String) The REST endpoint of the Kafka cluster (e.g., https://pkc-00000.us-central1.gcp.confluent.cloud:443). |
