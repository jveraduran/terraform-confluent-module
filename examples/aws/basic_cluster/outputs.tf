output "confluent_environment_id" {
  value       = module.confluent_cluster.confluent_environment_id
  description = "The ID of the Environment, for example, env-abc123"
}

output "confluent_environment_display_name" {
  value       = module.confluent_cluster.confluent_environment_display_name
  description = "The Display Name of the Environment"
}

output "basic_cluster_id" {
  value       = module.confluent_cluster.basic_cluster_id
  description = "(Required String) The ID of the Kafka cluster (e.g., lkc-abc123)."
}

output "standard_cluster_id" {
  value       = module.confluent_cluster.standard_cluster_id
  description = "(Required String) The ID of the Kafka cluster (e.g., lkc-abc123)."
}

output "dedicated_cluster_id" {
  value       = module.confluent_cluster.dedicated_cluster_id
  description = "(Required String) The ID of the Kafka cluster (e.g., lkc-abc123)."
}

output "basic_cluster_api_version" {
  value       = module.confluent_cluster.basic_cluster_api_version
  description = "(Required String) An API Version of the schema version of the Kafka cluster, for example, cmk/v2."
}

output "standard_cluster_api_version" {
  value       = module.confluent_cluster.standard_cluster_api_version
  description = "(Required String) An API Version of the schema version of the Kafka cluster, for example, cmk/v2."
}

output "dedicated_cluster_api_version" {
  value       = module.confluent_cluster.dedicated_cluster_api_version
  description = "(Required String) An API Version of the schema version of the Kafka cluster, for example, cmk/v2."
}

output "basic_cluster_api_kind" {
  value       = module.confluent_cluster.basic_cluster_api_kind
  description = "(Required String) A kind of the Kafka cluster, for example, Cluster."
}

output "standard_cluster_api_kind" {
  value       = module.confluent_cluster.standard_cluster_api_kind
  description = "(Required String) A kind of the Kafka cluster, for example, Cluster."
}

output "dedicated_cluster_api_kind" {
  value       = module.confluent_cluster.dedicated_cluster_api_kind
  description = "(Required String) A kind of the Kafka cluster, for example, Cluster."
}

output "basic_cluster_bootstrap_endpoint" {
  value       = module.confluent_cluster.basic_cluster_bootstrap_endpoint
  description = "(Required String) The bootstrap endpoint used by Kafka clients to connect to the Kafka cluster. (e.g., SASL_SSL://pkc-00000.us-central1.gcp.confluent.cloud:9092)."
  sensitive   = true
}

output "standard_cluster_bootstrap_endpoint" {
  value       = module.confluent_cluster.standard_cluster_bootstrap_endpoint
  description = "(Required String) The bootstrap endpoint used by Kafka clients to connect to the Kafka cluster. (e.g., SASL_SSL://pkc-00000.us-central1.gcp.confluent.cloud:9092)."
  sensitive   = true
}

output "dedicated_cluster_bootstrap_endpoint" {
  value       = module.confluent_cluster.dedicated_cluster_bootstrap_endpoint
  description = "(Required String) The bootstrap endpoint used by Kafka clients to connect to the Kafka cluster. (e.g., SASL_SSL://pkc-00000.us-central1.gcp.confluent.cloud:9092)."
  sensitive   = true
}

output "basic_cluster_rest_endpoint" {
  value       = module.confluent_cluster.basic_cluster_rest_endpoint
  description = "(Required String) The REST endpoint of the Kafka cluster (e.g., https://pkc-00000.us-central1.gcp.confluent.cloud:443)."
  sensitive   = true
}

output "standard_cluster_rest_endpoint" {
  value       = module.confluent_cluster.standard_cluster_bootstrap_endpoint
  description = "(Required String) The REST endpoint of the Kafka cluster (e.g., https://pkc-00000.us-central1.gcp.confluent.cloud:443)."
  sensitive   = true
}

output "dedicated_cluster_rest_endpoint" {
  value       = module.confluent_cluster.dedicated_cluster_rest_endpoint
  description = "(Required String) The REST endpoint of the Kafka cluster (e.g., https://pkc-00000.us-central1.gcp.confluent.cloud:443)."
  sensitive   = true
}

output "basic_cluster_rbac_crn" {
  value       = module.confluent_cluster.basic_cluster_rbac_crn
  description = "(Required String) The Confluent Resource Name of the Kafka cluster, for example, crn://confluent.cloud/organization=1111aaaa-11aa-11aa-11aa-111111aaaaaa/environment=env-abc123/cloud-cluster=lkc-abc123"
  sensitive   = true
}

output "standard_cluster_rbac_crn" {
  value       = module.confluent_cluster.standard_cluster_rbac_crn
  description = "(Required String) The Confluent Resource Name of the Kafka cluster, for example, crn://confluent.cloud/organization=1111aaaa-11aa-11aa-11aa-111111aaaaaa/environment=env-abc123/cloud-cluster=lkc-abc123"
  sensitive   = true
}

output "dedicated_cluster_rbac_crn" {
  value       = module.confluent_cluster.dedicated_cluster_rbac_crn
  description = "(Required String) The Confluent Resource Name of the Kafka cluster, for example, crn://confluent.cloud/organization=1111aaaa-11aa-11aa-11aa-111111aaaaaa/environment=env-abc123/cloud-cluster=lkc-abc123"
  sensitive   = true
}

output "confluent_service_account_id" {
  value       = module.confluent_cluster.confluent_service_account_id
  description = "(Required String) The ID of the Service Account (e.g., sa-abc123)."
  sensitive   = true
}

output "confluent_service_account_api_version" {
  value       = module.confluent_cluster.confluent_service_account_api_version
  description = "(Required String) An API Version of the schema version of the Service Account, for example, iam/v2."
  sensitive   = true
}

output "confluent_service_account_kind" {
  value       = module.confluent_cluster.confluent_service_account_kind
  description = "(Required String) A kind of the Service Account, for example, ServiceAccount"
  sensitive   = true
}

output "confluent_role_binding_id" {
  value       = module.confluent_cluster.confluent_role_binding_id
  description = "(Required String) The ID of the Role Binding (e.g., rb-f3a90de)."
  sensitive   = true
}

output "api_key" {
  value       = module.confluent_cluster.api_key
  description = "(Required String) The ID of the API Key, for example, EGWX3S4BVNQIRBMJ"
  sensitive   = true
}

output "api_secret" {
  value       = module.confluent_cluster.api_secret
  description = "(Required String, Sensitive) The secret of the API Key."
  sensitive   = true
}

output "confluent_kafka_topic_id" {
  value       = module.confluent_topics.confluent_kafka_topic_id
  description = "(Required String) The ID of the Kafka topic, in the format <Kafka cluster ID>/<Kafka Topic name>, for example, lkc-abc123/orders-1"
}