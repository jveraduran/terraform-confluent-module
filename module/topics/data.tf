data "confluent_kafka_cluster" "main" {
  id = var.cluster_id
  environment {
    id = var.environment
  }
}