resource "confluent_kafka_topic" "main" {
  # Required
  topic_name    = var.topic_name
  rest_endpoint = data.confluent_kafka_cluster.main.rest_endpoint
  credentials {
    key    = var.api_key
    secret = var.api_secret
  }
  kafka_cluster {
    id = data.confluent_kafka_cluster.main.id
  }
  lifecycle {
    prevent_destroy = true
  }
  # Optional
  partitions_count = var.partitions_count == "" ? null : var.partitions_count
  # https://docs.confluent.io/cloud/current/clusters/broker-config.html#custom-topic-settings-for-all-cluster-types
  config = {
    "cleanup.policy"                            = var.cleanup_policy == "" ? null : var.cleanup_policy
    "compression.type"                          = var.compression_type == "" ? null : var.compression_type
    "connection.failed.authentication.delay.ms" = var.connection_failed_authentication_delay == "" ? null : var.connection_failed_authentication_delay
    "default.replication.factor"                = var.default_replication_factor == "" ? null : var.default_replication_factor
    "delete.retention.ms"                       = var.delete_retention == "" ? null : var.delete_retention
    "file.delete.delay.ms"                      = var.file_delete_delay == "" ? null : var.file_delete_delay
    "flush.messages"                            = var.flush_messages == "" ? null : var.flush_messages
    "flush.ms"                                  = var.flush == "" ? null : var.flush
    "group.max.session.timeout.ms"              = var.group_max_session_timeout == "" ? null : var.group_max_session_timeout
    "index.interval.bytes"                      = var.index_interval_byte == "" ? null : var.index_interval_byte
    "max.message.bytes"                         = var.max_message_bytes == "" ? null : var.max_message_bytes
    "max.compaction.lag.ms"                     = var.max_compaction_lag == "" ? null : var.max_compaction_lag
    "message.downconversion.enable"             = var.message_downconversion_enable == "" ? null : var.message_downconversion_enable
    "message.format.version"                    = var.message_format_version == "" ? null : var.message_format_version
    "message.timestamp.difference.max.ms"       = var.message_timestamp_difference_max == "" ? null : var.message_timestamp_difference_max
    "message.timestamp.type"                    = var.message_timestamp_type == "" ? null : var.message_timestamp_type
    "min.cleanable.dirty.ratio"                 = var.min_cleanable_dirty_ratio == "" ? null : var.min_cleanable_dirty_ratio
    "min.compaction.lag.ms"                     = var.min_compaction_lag == "" ? null : var.min_compaction_lag
    "min.insync.replicas"                       = var.min_insync_replicas == "" ? null : var.min_insync_replicas
    "num.partitions"                            = var.num_partitions == "" ? null : var.num_partitions
    "offsets.retention.minutes"                 = var.offsets_retention_minutes == "" ? null : var.offsets_retention_minutes
    "preallocate"                               = var.preallocate == "" ? null : var.preallocate
    "retention.bytes"                           = var.retention_bytes == "" ? null : var.retention_bytes
    "retention.ms"                              = var.retention == "" ? null : var.retention
    "segment.bytes"                             = var.segment_bytes == "" ? null : var.segment_bytes
    "segment.index.bytes"                       = var.segment_index == "" ? null : var.segment_index
    "segment.jitter.ms"                         = var.segment_jitter == "" ? null : var.segment_jitter
    "segment.ms"                                = var.segment_ms == "" ? null : var.segment_ms
    "unclean.leader.election.enable"            = var.unclean_leader_election_enable == "" ? null : var.unclean_leader_election_enable
  }
}