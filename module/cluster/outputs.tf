output "confluent_environment_id" {
  value     = confluent_environment.main.id
}

output "confluent_environment_display_name" {
  value     = confluent_environment.main.resource_name
}
output "basic_cluster_id" {
  value     = confluent_kafka_cluster.basic.*.id
}

output "standard_cluster_id" {
  value     = confluent_kafka_cluster.standard.*.id
}

output "dedicated_cluster_id" {
  value     = confluent_kafka_cluster.dedicated.*.id
}

output "basic_cluster_api_version" {
  value     = confluent_kafka_cluster.basic.*.api_version
}

output "standard_cluster_api_version" {
  value     = confluent_kafka_cluster.standard.*.api_version
}

output "dedicated_cluster_api_version" {
  value     = confluent_kafka_cluster.dedicated.*.api_version
}

output "basic_cluster_api_kind" {
  value     = confluent_kafka_cluster.basic.*.kind
}

output "standard_cluster_api_kind" {
  value     = confluent_kafka_cluster.standard.*.kind
}

output "dedicated_cluster_api_kind" {
  value     = confluent_kafka_cluster.dedicated.*.kind
}

output "basic_cluster_bootstrap_endpoint" {
  value     = confluent_kafka_cluster.basic.*.bootstrap_endpoint
  sensitive = true
}

output "standard_cluster_bootstrap_endpoint" {
  value     = confluent_kafka_cluster.standard.*.bootstrap_endpoint
  sensitive = true
}

output "dedicated_cluster_bootstrap_endpoint" {
  value     = confluent_kafka_cluster.dedicated.*.bootstrap_endpoint
  sensitive = true
}

output "basic_cluster_rest_endpoint" {
  value     = confluent_kafka_cluster.basic.*.rest_endpoint
  sensitive = true
}

output "standard_cluster_rest_endpoint" {
  value     = confluent_kafka_cluster.standard.*.rest_endpoint
  sensitive = true
}

output "dedicated_cluster_rest_endpoint" {
  value     = confluent_kafka_cluster.dedicated.*.rest_endpoint
  sensitive = true
}

output "basic_cluster_rbac_crn" {
  value     = confluent_kafka_cluster.basic.*.rbac_crn
  sensitive = true
}

output "standard_cluster_rbac_crn" {
  value     = confluent_kafka_cluster.standard.*.rbac_crn
  sensitive = true
}

output "dedicated_cluster_rbac_crn" {
  value     = confluent_kafka_cluster.dedicated.*.rbac_crn
  sensitive = true
}

output "confluent_service_account_id" {
  value     = confluent_service_account.main.id
  sensitive = true
}

output "confluent_service_account_api_version" {
  value     = confluent_service_account.main.api_version
  sensitive = true
}

output "confluent_service_account_kind" {
  value     = confluent_service_account.main.kind
  sensitive = true
}

output "confluent_role_binding_id" {
  value     = confluent_role_binding.main.id
  sensitive = true
}

output "api_key" {
  value     = confluent_api_key.main.*.id
  sensitive = true
}

output "api_secret" {
  value     = confluent_api_key.main.*.secret
  sensitive = true
}