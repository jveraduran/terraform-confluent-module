terraform {
  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = "1.66.0"
    }
  }
}

provider "confluent" {
  cloud_api_key    = var.cloud_api_key
  cloud_api_secret = var.cloud_api_secret
}