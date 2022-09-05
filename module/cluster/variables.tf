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
  default     = false
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

variable "cku_number" {
  description = ""
  type        = number
  default     = null
}

variable "create_api_key" {
  description = ""
  type        = bool
  default     = false
}

variable "service_account_description" {
  description = ""
  type        = string
  default     = null
}

variable "owner" {
  description = ""
  type        = map(string)
  default     = null
}
