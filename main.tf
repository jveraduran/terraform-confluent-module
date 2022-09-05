module "confluent_cluster" {
  source                  = "./module/cluster"
  display_name            = "demo"
  availability            = "SINGLE_ZONE"
  cloud                   = "AWS"
  region                  = "us-east-2"
  create_standard_cluster = true
  create_api_key          = true
}

module "confluent_topics" {
  source           = "./module/topics"
  topic_name       = "demo"
  partitions_count = 4
  cluster_id       = module.confluent_cluster.standard_cluster_id[0]
  environment      = module.confluent_cluster.environment
  api_key          = module.confluent_cluster.api_key[0]
  api_secret       = module.confluent_cluster.api_secret[0]
}