module "confluent_cluster" {
  source                   = "./module/cluster"
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
  source           = "./module/topics"
  topic_name       = "demo"
  partitions_count = 4
  cluster_id       = var.create_basic_cluster == true ? module.confluent_cluster.basic_cluster_id[0] : (var.create_standard_cluster == true ? module.confluent_cluster.standard_cluster_id[0] : module.confluent_cluster.dedicated_cluster_id[0])
  environment      = module.confluent_cluster.environment
  api_key          = module.confluent_cluster.api_key[0]
  api_secret       = module.confluent_cluster.api_secret[0]
}