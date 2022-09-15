variable "cloud_api_key" {
  description = ""
  type        = string
}

variable "cloud_api_secret" {
  description = ""
  type        = string
}

variable "display_name" {
  description = ""
  type        = string
  default     = null
}

variable "availability" {
  description = ""
  type        = string
  default     = null
}

variable "cloud" {
  description = ""
  type        = string
  default     = null
}

variable "region" {
  description = ""
  type        = string
  default     = null
}

variable "create_basic_cluster" {
  description = ""
  type        = bool
  default     = true
}

variable "create_standard_cluster" {
  description = ""
  type        = bool
  default     = false
}

variable "create_dedicated_cluster" {
  description = ""
  type        = bool
  default     = false
}