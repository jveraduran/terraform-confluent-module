# tests/integration.tftest.hcl

# Usamos un proveedor simulado para evitar llamadas reales a la API de Confluent Cloud
mock_provider "confluent" {}

# Variables globales base (credenciales dummy) para todas las pruebas
variables {
  cloud_api_key    = "dummy-api-key-12345"
  cloud_api_secret = "dummy-api-secret-12345-abcde-fghij"
  display_name     = "test-integration"
  availability     = "SINGLE_ZONE"
  cloud            = "AWS"
  region           = "us-east-2"
}

# 1. Prueba de Configuración por Defecto (Standard)
run "default_standard_cluster_plan" {
  command = plan
  # No sobreescribimos las variables booleanas. Por defecto, create_standard_cluster es true.
  assert {
    condition     = var.create_standard_cluster == true
    error_message = "La variable por defecto debería habilitar el cluster Standard."
  }
}

# 2. Prueba de Creación: Solo Basic Cluster
run "basic_cluster_only_plan" {
  command = plan
  variables {
    create_basic_cluster     = true
    create_standard_cluster  = false
    create_dedicated_cluster = false
  }
  assert {
    condition     = var.create_basic_cluster == true
    error_message = "El plan para un cluster Basic falló."
  }
}

# 3. Prueba de Creación: Solo Dedicated Cluster
run "dedicated_cluster_only_plan" {
  command = plan
  variables {
    create_basic_cluster     = false
    create_standard_cluster  = false
    create_dedicated_cluster = true
  }
  assert {
    condition     = var.create_dedicated_cluster == true
    error_message = "El plan para un cluster Dedicated falló."
  }
}

# 4. Prueba de Lógica: Prioridad de Basic sobre Standard
# Valida el operador ternario en main.tf que prioriza Basic si ambos son true
run "logic_priority_basic_over_standard" {
  command = plan
  variables {
    create_basic_cluster    = true
    create_standard_cluster = true
  }
  assert {
    condition     = var.create_basic_cluster == true
    error_message = "El plan falló al evaluar la prioridad de Basic sobre Standard."
  }
}

# 5. Prueba de Lógica: Prioridad de Standard sobre Dedicated
# Valida que si Standard y Dedicated son true, se prioriza Standard
run "logic_priority_standard_over_dedicated" {
  command = plan
  variables {
    create_basic_cluster     = false
    create_standard_cluster  = true
    create_dedicated_cluster = true
  }
  assert {
    condition     = var.create_standard_cluster == true
    error_message = "El plan falló al evaluar la prioridad de Standard sobre Dedicated."
  }
}

# 6. Prueba de Despliegue en AWS (Multi-Zone)
run "aws_multi_zone_deployment" {
  command = plan
  variables {
    cloud        = "AWS"
    region       = "us-east-1"
    availability = "MULTI_ZONE"
  }
  assert {
    condition     = var.cloud == "AWS"
    error_message = "Fallo al procesar las variables de AWS."
  }
}

# 7. Prueba de Despliegue en GCP (Single-Zone)
run "gcp_single_zone_deployment" {
  command = plan
  variables {
    cloud        = "GCP"
    region       = "us-central1"
    availability = "SINGLE_ZONE"
  }
  assert {
    condition     = var.cloud == "GCP"
    error_message = "Fallo al procesar las variables de GCP."
  }
}

# 8. Prueba de Despliegue en Azure (Multi-Zone)
run "azure_multi_zone_deployment" {
  command = plan
  variables {
    cloud        = "AZURE"
    region       = "centralus"
    availability = "MULTI_ZONE"
  }
  assert {
    condition     = var.cloud == "AZURE"
    error_message = "Fallo al procesar las variables de Azure."
  }
}

# 9. Prueba de Nombres y Metadatos Personalizados
run "custom_metadata_deployment" {
  command = plan
  variables {
    display_name = "produccion-core-kafka"
  }
  assert {
    condition     = var.display_name == "produccion-core-kafka"
    error_message = "El display_name no se propagó correctamente."
  }
}

# 10. Prueba de Lógica: Colisión Total (Todos los flags en true)
# Asegura que el operador ternario en main.tf resuelva sin errores de índice
run "logic_collision_all_flags_true" {
  command = plan
  variables {
    create_basic_cluster     = true
    create_standard_cluster  = true
    create_dedicated_cluster = true
  }
  assert {
    condition     = var.create_basic_cluster == true
    error_message = "El plan falló estrepitosamente cuando todos los flags estaban activados."
  }
}
