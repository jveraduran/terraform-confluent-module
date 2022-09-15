resource "confluent_environment" "main" {
  # Required
  display_name = var.display_name

  lifecycle {
    prevent_destroy = true
  }
}

resource "confluent_kafka_cluster" "basic" {
  count = var.create_basic_cluster ? 1 : 0
  # Required
  display_name = var.display_name
  availability = var.availability
  cloud        = var.cloud
  region       = var.region
  basic {}

  environment {
    id = confluent_environment.main.id
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "confluent_kafka_cluster" "standard" {
  count = var.create_standard_cluster ? 1 : 0
  # Required
  display_name = var.display_name
  availability = var.availability
  cloud        = var.cloud
  region       = var.region
  standard {}

  environment {
    id = confluent_environment.main.id
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "confluent_kafka_cluster" "dedicated" {
  count = var.create_dedicated_cluster ? 1 : 0
  # Required
  display_name = var.display_name
  availability = var.availability
  cloud        = var.cloud
  region       = var.region
  dedicated {
    cku = var.cku_number
  }

  environment {
    id = confluent_environment.main.id
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "confluent_service_account" "main" {
  count = var.create_api_key ? 1 : 0
  # Required
  display_name = var.display_name
  # Optional
  description = var.service_account_description
}

resource "confluent_role_binding" "main" {
  count       = var.create_api_key ? 1 : 0
  principal   = "User:${confluent_service_account.main[0].id}"
  role_name   = "CloudClusterAdmin"
  crn_pattern = var.create_basic_cluster == true ? confluent_kafka_cluster.basic[0].rbac_crn : (var.create_standard_cluster == true ? confluent_kafka_cluster.standard[0].rbac_crn : (var.create_dedicated_cluster == true ? confluent_kafka_cluster.dedicated[0].rbac_crn : null))
}

resource "confluent_api_key" "main" {
  count = var.create_api_key ? 1 : 0
  depends_on = [
    confluent_role_binding.main
  ]
  # Required
  display_name = var.display_name
  owner {
    id          = confluent_service_account.main[0].id
    api_version = confluent_service_account.main[0].api_version
    kind        = confluent_service_account.main[0].kind
  }
  managed_resource {
    id          = var.create_basic_cluster == true ? confluent_kafka_cluster.basic[0].id : (var.create_standard_cluster == true ? confluent_kafka_cluster.standard[0].id : (var.create_dedicated_cluster == true ? confluent_kafka_cluster.dedicated[0].id : null))
    api_version = var.create_basic_cluster == true ? confluent_kafka_cluster.basic[0].api_version : (var.create_standard_cluster == true ? confluent_kafka_cluster.standard[0].api_version : (var.create_dedicated_cluster == true ? confluent_kafka_cluster.dedicated[0].api_version : null))
    kind        = var.create_basic_cluster == true ? confluent_kafka_cluster.basic[0].kind : (var.create_standard_cluster == true ? confluent_kafka_cluster.standard[0].kind : (var.create_dedicated_cluster == true ? confluent_kafka_cluster.dedicated[0].kind : null))

    environment {
      id = confluent_environment.main.id
    }
  }


}
