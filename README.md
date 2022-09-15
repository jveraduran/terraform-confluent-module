# Confluent - Cluster Module
<p align="left" style="text-align:left;">
  <a href="https://www.confluent.io">
    <img alt="Conflent logo" src="https://d24wuq6o951i2g.cloudfront.net/img/events/id/457/457654228/assets/921.20200122-PNG-confluent_logo-dkblue.png" width="500" />
  </a>
</p>

## About this repository

Terraform module which creates Confluent Kafka Cluster with Topic
## About Confluent

Confluent Platform is a full-scale data streaming platform that enables you to easily access, store, and manage data as continuous, real-time streams. Built by the original creators of Apache Kafka®, Confluent expands the benefits of Kafka with enterprise-grade features while removing the burden of Kafka management or monitoring. Today, over 80% of the Fortune 100 are powered by data streaming technology – and the majority of those leverage Confluent.

## Usage

```
module "confluent_cluster" {
  source                   = "github.com/jveraduran/terraform-confluent-module//module/cluster?ref=v1.0.0"
  display_name             = "demo"
  availability             = "SINGLE_ZONE"
  cloud                    = "AWS"
  region                   = "us-east-2"
  create_basic_cluster     = var.create_basic_cluster
  create_standard_cluster  = var.create_standard_cluster
  create_dedicated_cluster = var.create_dedicated_cluster
  create_api_key           = true
}

module "confluent_topics" {
  depends_on = [
    module.confluent_cluster
  ]
  source           = "github.com/jveraduran/terraform-confluent-module//module/topics?ref=v1.0.0"
  topic_name       = "demo"
  partitions_count = 4
  cluster_id       = var.create_basic_cluster == true ? module.confluent_cluster.basic_cluster_id[0] : (var.create_standard_cluster == true ? module.confluent_cluster.standard_cluster_id[0] : module.confluent_cluster.dedicated_cluster_id[0])
  environment      = module.confluent_cluster.confluent_environment_id
  api_key          = module.confluent_cluster.api_key[0]
  api_secret       = module.confluent_cluster.api_secret[0]
}
```

## Examples

[Basic Cluster AWS](examples/aws/basic_cluster/main.tf) | [Basic Cluster GCP](examples/gcp/basic_cluster/main.tf) | [Basic Cluster AZURE](examples/azure/basic_cluster/main.tf) Basic clusters are designed for development use-cases. Basic clusters support the following:
- [99.5% uptime SLA](https://confluent.io/confluent-cloud-uptime-sla/?_ga=2.185632288.840810173.1663253153-1780244465.1660679524)
- Up to 100 MB/s of throughput and 5 TB of storage.
- You only pay for the ingress, egress, storage, and partitions. There is no base cluster price.
- Can be upgraded to a [single-zone Standard cluster](https://docs.confluent.io/cloud/current/clusters/cluster-types.html#standard-cluster) at any time using the Confluent Cloud Console.
  
[Standard Cluster AWS](examples/aws/standard_cluster/main.tf) | [Standard Cluster GCP](examples/gcp/standard_cluster/main.tf) | [Standard Cluster AZURE](examples/azure/standard_cluster/main.tf)
- [Uptime SLA: 99.95% for Single-Zone, 99.99% for Multi-Zone](https://confluent.io/confluent-cloud-uptime-sla/?_ga=2.75410971.840810173.1663253153-1780244465.1660679524)
- Up to 100 MB/s of throughput and unlimited storage.
- Multi-zone high availability (optional). A multi-zone cluster is spread across three availability zones for better resiliency.
- Charged an hourly base price in addition to the ingress, egress, storage, and partitions.

[Dedicated Cluster AWS](examples/aws/dedicated_cluster/main.tf) | [Dedicated Cluster GCP](examples/gcp/dedicated_cluster/main.tf) | [Dedicated Cluster AZURE](examples/azure/dedicated_cluster/main.tf) 
- Single-tenant deployments with a [99.95% uptime SLA for Single-Zone, and 99.99% for Multi-Zone](https://confluent.io/confluent-cloud-uptime-sla/?_ga=2.121005825.840810173.1663253153-1780244465.1660679524)
- Private networking options including VPC peering, AWS Transit Gateway, AWS PrivateLink, and Azure PrivateLink.
- [Self-managed keys](https://docs.confluent.io/cloud/current/clusters/byok/index.html#byok-encrypted-clusters) when AWS or Google Cloud is the cloud service provider.
- Multi-zone high availability (optional). A multi-zone cluster is spread across three availability zones for better resiliency.
- Can be scaled to achieve gigabytes per second of ingress.
- Simple scaling in terms of CKUs.
- [Cluster expansion](https://docs.confluent.io/cloud/current/clusters/expand.html#cloud-cluster-expand), and [Cluster shrinking](https://docs.confluent.io/cloud/current/clusters/shrink.html#cloud-cluster-shrink).

<br>

## Contributing

I'm grateful to the community for contributing bugfixes and improvements! Please see below to learn how you can take part.

- [Code of Conduct](docs/CODE_OF_CONDUCT.md)
- [Contributing Guide](./.github/CONTRIBUTING.md)

<br>

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_confluent"></a> [confluent](#requirement\_confluent) | 1.4.0 |

<br>

## Providers

| Name | Version |
|------|---------|
| <a name="provider_confluent"></a> [confluent](#provider\_confluent) | 1.4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_confluent_cluster"></a> [confluent\_cluster](#module\_confluent\_cluster) | github.com/jveraduran/terraform-confluent-module//module/cluster | v1.0.0 |
| <a name="module_confluent_topics"></a> [confluent\_topics](#module\_confluent\_topics) | github.com/jveraduran/terraform-confluent-module//module/topics | v1.0.0 |

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
| [confluent_kafka_topic.main](https://registry.terraform.io/providers/confluentinc/confluent/1.4.0/docs/resources/kafka_topic) | resource |
| [confluent_kafka_cluster.main](https://registry.terraform.io/providers/confluentinc/confluent/1.4.0/docs/data-sources/kafka_cluster) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability"></a> [availability](#input\_availability) | n/a | `string` | `null` | no |
| <a name="input_cloud"></a> [cloud](#input\_cloud) | n/a | `string` | `null` | no |
| <a name="input_cloud_api_key"></a> [cloud\_api\_key](#input\_cloud\_api\_key) | n/a | `string` | n/a | yes |
| <a name="input_cloud_api_secret"></a> [cloud\_api\_secret](#input\_cloud\_api\_secret) | n/a | `string` | n/a | yes |
| <a name="input_create_basic_cluster"></a> [create\_basic\_cluster](#input\_create\_basic\_cluster) | n/a | `bool` | `false` | no |
| <a name="input_create_dedicated_cluster"></a> [create\_dedicated\_cluster](#input\_create\_dedicated\_cluster) | n/a | `bool` | `false` | no |
| <a name="input_create_standard_cluster"></a> [create\_standard\_cluster](#input\_create\_standard\_cluster) | n/a | `bool` | `true` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | n/a | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `null` | no |

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
| <a name="output_confluent_kafka_topic_id"></a> [confluent\_kafka\_topic\_id](#output\_confluent\_kafka\_topic\_id) | (Required String) The ID of the Kafka topic, in the format <Kafka cluster ID>/<Kafka Topic name>, for example, lkc-abc123/orders-1 |
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
