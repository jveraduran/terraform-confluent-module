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
| [confluent_kafka_topic.main](https://registry.terraform.io/providers/confluentinc/confluent/1.4.0/docs/resources/kafka_topic) | resource |
| [confluent_kafka_cluster.main](https://registry.terraform.io/providers/confluentinc/confluent/1.4.0/docs/data-sources/kafka_cluster) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_key"></a> [api\_key](#input\_api\_key) | n/a | `string` | `null` | no |
| <a name="input_api_secret"></a> [api\_secret](#input\_api\_secret) | n/a | `string` | `null` | no |
| <a name="input_cleanup_policy"></a> [cleanup\_policy](#input\_cleanup\_policy) | n/a | `string` | `null` | no |
| <a name="input_cluster_id"></a> [cluster\_id](#input\_cluster\_id) | n/a | `string` | `null` | no |
| <a name="input_compression_type"></a> [compression\_type](#input\_compression\_type) | n/a | `string` | `null` | no |
| <a name="input_connection_failed_authentication_delay"></a> [connection\_failed\_authentication\_delay](#input\_connection\_failed\_authentication\_delay) | n/a | `string` | `null` | no |
| <a name="input_default_replication_factor"></a> [default\_replication\_factor](#input\_default\_replication\_factor) | n/a | `string` | `null` | no |
| <a name="input_delete_retention"></a> [delete\_retention](#input\_delete\_retention) | n/a | `string` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `null` | no |
| <a name="input_file_delete_delay"></a> [file\_delete\_delay](#input\_file\_delete\_delay) | n/a | `string` | `null` | no |
| <a name="input_flush"></a> [flush](#input\_flush) | n/a | `string` | `null` | no |
| <a name="input_flush_messages"></a> [flush\_messages](#input\_flush\_messages) | n/a | `string` | `null` | no |
| <a name="input_group_max_session_timeout"></a> [group\_max\_session\_timeout](#input\_group\_max\_session\_timeout) | n/a | `string` | `null` | no |
| <a name="input_index_interval_byte"></a> [index\_interval\_byte](#input\_index\_interval\_byte) | n/a | `string` | `null` | no |
| <a name="input_max_compaction_lag"></a> [max\_compaction\_lag](#input\_max\_compaction\_lag) | n/a | `string` | `null` | no |
| <a name="input_max_message_bytes"></a> [max\_message\_bytes](#input\_max\_message\_bytes) | n/a | `string` | `null` | no |
| <a name="input_message_downconversion_enable"></a> [message\_downconversion\_enable](#input\_message\_downconversion\_enable) | n/a | `string` | `null` | no |
| <a name="input_message_format_version"></a> [message\_format\_version](#input\_message\_format\_version) | n/a | `string` | `null` | no |
| <a name="input_message_timestamp_difference_max"></a> [message\_timestamp\_difference\_max](#input\_message\_timestamp\_difference\_max) | n/a | `string` | `null` | no |
| <a name="input_message_timestamp_type"></a> [message\_timestamp\_type](#input\_message\_timestamp\_type) | n/a | `string` | `null` | no |
| <a name="input_min_cleanable_dirty_ratio"></a> [min\_cleanable\_dirty\_ratio](#input\_min\_cleanable\_dirty\_ratio) | n/a | `string` | `null` | no |
| <a name="input_min_compaction_lag"></a> [min\_compaction\_lag](#input\_min\_compaction\_lag) | n/a | `string` | `null` | no |
| <a name="input_min_insync_replicas"></a> [min\_insync\_replicas](#input\_min\_insync\_replicas) | n/a | `string` | `null` | no |
| <a name="input_num_partitions"></a> [num\_partitions](#input\_num\_partitions) | n/a | `string` | `null` | no |
| <a name="input_offsets_retention_minutes"></a> [offsets\_retention\_minutes](#input\_offsets\_retention\_minutes) | n/a | `string` | `null` | no |
| <a name="input_partitions_count"></a> [partitions\_count](#input\_partitions\_count) | n/a | `string` | `null` | no |
| <a name="input_preallocate"></a> [preallocate](#input\_preallocate) | n/a | `string` | `null` | no |
| <a name="input_retention"></a> [retention](#input\_retention) | n/a | `string` | `null` | no |
| <a name="input_retention_bytes"></a> [retention\_bytes](#input\_retention\_bytes) | n/a | `string` | `null` | no |
| <a name="input_segment_bytes"></a> [segment\_bytes](#input\_segment\_bytes) | n/a | `string` | `null` | no |
| <a name="input_segment_index"></a> [segment\_index](#input\_segment\_index) | n/a | `string` | `null` | no |
| <a name="input_segment_jitter"></a> [segment\_jitter](#input\_segment\_jitter) | n/a | `string` | `null` | no |
| <a name="input_segment_ms"></a> [segment\_ms](#input\_segment\_ms) | n/a | `string` | `null` | no |
| <a name="input_topic_name"></a> [topic\_name](#input\_topic\_name) | n/a | `string` | `null` | no |
| <a name="input_unclean_leader_election_enable"></a> [unclean\_leader\_election\_enable](#input\_unclean\_leader\_election\_enable) | n/a | `string` | `null` | no |

## Outputs

No outputs.
