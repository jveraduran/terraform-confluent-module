output "confluent_environment_id" {
  value       = confluent_environment.main.id
  description = "The ID of the Environment, for example, env-abc123"
}

output "confluent_environment_display_name" {
  value       = confluent_environment.main.resource_name
  description = "The Display Name of the Environment"
}
output "basic_cluster_id" {
  value       = confluent_kafka_cluster.basic.*.id
  description = "(Required String) The ID of the Kafka cluster (e.g., lkc-abc123)."
}

output "standard_cluster_id" {
  value       = confluent_kafka_cluster.standard.*.id
  description = "(Required String) The ID of the Kafka cluster (e.g., lkc-abc123)."
}

output "dedicated_cluster_id" {
  value       = confluent_kafka_cluster.dedicated.*.id
  description = "(Required String) The ID of the Kafka cluster (e.g., lkc-abc123)."
}

output "basic_cluster_api_version" {
  value       = confluent_kafka_cluster.basic.*.api_version
  description = "(Required String) An API Version of the schema version of the Kafka cluster, for example, cmk/v2."
}

output "standard_cluster_api_version" {
  value       = confluent_kafka_cluster.standard.*.api_version
  description = "(Required String) An API Version of the schema version of the Kafka cluster, for example, cmk/v2."
}

output "dedicated_cluster_api_version" {
  value       = confluent_kafka_cluster.dedicated.*.api_version
  description = "(Required String) An API Version of the schema version of the Kafka cluster, for example, cmk/v2."
}

output "basic_cluster_api_kind" {
  value       = confluent_kafka_cluster.basic.*.kind
  description = "(Required String) A kind of the Kafka cluster, for example, Cluster."
}

output "standard_cluster_api_kind" {
  value       = confluent_kafka_cluster.standard.*.kind
  description = "(Required String) A kind of the Kafka cluster, for example, Cluster."
}

output "dedicated_cluster_api_kind" {
  value       = confluent_kafka_cluster.dedicated.*.kind
  description = "(Required String) A kind of the Kafka cluster, for example, Cluster."
}

output "basic_cluster_bootstrap_endpoint" {
  value       = confluent_kafka_cluster.basic.*.bootstrap_endpoint
  description = "(Required String) The bootstrap endpoint used by Kafka clients to connect to the Kafka cluster. (e.g., SASL_SSL://pkc-00000.us-central1.gcp.confluent.cloud:9092)."
  sensitive   = true
}

output "standard_cluster_bootstrap_endpoint" {
  value       = confluent_kafka_cluster.standard.*.bootstrap_endpoint
  description = "(Required String) The bootstrap endpoint used by Kafka clients to connect to the Kafka cluster. (e.g., SASL_SSL://pkc-00000.us-central1.gcp.confluent.cloud:9092)."
  sensitive   = true
}

output "dedicated_cluster_bootstrap_endpoint" {
  value       = confluent_kafka_cluster.dedicated.*.bootstrap_endpoint
  description = "(Required String) The bootstrap endpoint used by Kafka clients to connect to the Kafka cluster. (e.g., SASL_SSL://pkc-00000.us-central1.gcp.confluent.cloud:9092)."
  sensitive   = true
}

output "basic_cluster_rest_endpoint" {
  value       = confluent_kafka_cluster.basic.*.rest_endpoint
  description = "(Required String) The REST endpoint of the Kafka cluster (e.g., https://pkc-00000.us-central1.gcp.confluent.cloud:443)."
  sensitive   = true
}

output "standard_cluster_rest_endpoint" {
  value       = confluent_kafka_cluster.standard.*.rest_endpoint
  description = "(Required String) The REST endpoint of the Kafka cluster (e.g., https://pkc-00000.us-central1.gcp.confluent.cloud:443)."
  sensitive   = true
}

output "dedicated_cluster_rest_endpoint" {
  value       = confluent_kafka_cluster.dedicated.*.rest_endpoint
  description = "(Required String) The REST endpoint of the Kafka cluster (e.g., https://pkc-00000.us-central1.gcp.confluent.cloud:443)."
  sensitive   = true
}

output "basic_cluster_rbac_crn" {
  value       = confluent_kafka_cluster.basic.*.rbac_crn
  description = "(Required String) The Confluent Resource Name of the Kafka cluster, for example, crn://confluent.cloud/organization=1111aaaa-11aa-11aa-11aa-111111aaaaaa/environment=env-abc123/cloud-cluster=lkc-abc123"
  sensitive   = true
}

output "standard_cluster_rbac_crn" {
  value       = confluent_kafka_cluster.standard.*.rbac_crn
  description = "(Required String) The Confluent Resource Name of the Kafka cluster, for example, crn://confluent.cloud/organization=1111aaaa-11aa-11aa-11aa-111111aaaaaa/environment=env-abc123/cloud-cluster=lkc-abc123"
  sensitive   = true
}

output "dedicated_cluster_rbac_crn" {
  value       = confluent_kafka_cluster.dedicated.*.rbac_crn
  description = "(Required String) The Confluent Resource Name of the Kafka cluster, for example, crn://confluent.cloud/organization=1111aaaa-11aa-11aa-11aa-111111aaaaaa/environment=env-abc123/cloud-cluster=lkc-abc123"
  sensitive   = true
}

output "confluent_service_account_id" {
  value       = confluent_service_account.main.*.id
  description = "(Required String) The ID of the Service Account (e.g., sa-abc123)."
  sensitive   = true
}

output "confluent_service_account_api_version" {
  value       = confluent_service_account.main.*.api_version
  description = "(Required String) An API Version of the schema version of the Service Account, for example, iam/v2."
  sensitive   = true
}

output "confluent_service_account_kind" {
  value       = confluent_service_account.main.*.kind
  description = "(Required String) A kind of the Service Account, for example, ServiceAccount"
  sensitive   = true
}

output "confluent_role_binding_id" {
  value       = confluent_role_binding.main.*.id
  description = "(Required String) The ID of the Role Binding (e.g., rb-f3a90de)."
  sensitive   = true
}

output "api_key" {
  value       = confluent_api_key.main.*.id
  description = "(Required String) The ID of the API Key, for example, EGWX3S4BVNQIRBMJ"
  sensitive   = true
}

output "api_secret" {
  value       = confluent_api_key.main.*.secret
  description = "(Required String, Sensitive) The secret of the API Key."
  sensitive   = true
}