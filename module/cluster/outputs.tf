output "basic_cluster_id" {
  value     = confluent_kafka_cluster.basic.*.id
}

output "standard_cluster_id" {
  value     = confluent_kafka_cluster.standard.*.id
}

output "dedicated_cluster_id" {
  value     = confluent_kafka_cluster.dedicated.*.id
}

output "environment" {
  value     = confluent_environment.main.id
}

output "api_key" {
  value     = confluent_api_key.main.*.id
  sensitive = true
}

output "api_secret" {
  value     = confluent_api_key.main.*.secret
  sensitive = true
}