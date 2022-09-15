output "confluent_kafka_topic_id" {
  value       = confluent_kafka_topic.main.id
  description = "(Required String) The ID of the Kafka topic, in the format <Kafka cluster ID>/<Kafka Topic name>, for example, lkc-abc123/orders-1"
}
