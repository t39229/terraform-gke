# Input variable definitions

variable "project" {
  description = "Name of the project"
  type        = string
  default     = "proud-storm-444720-m9"
}

variable "region" {
  description = "Name of the region"
  type        = string
  default     = "us-central1"
}

variable "bucket" {
  description = "Name of the bucket"
  type        = string
  default     = "bradmeh-tf-state-staging"
}

variable "machine_type" {
  description = "Type of the machine_type"
  type        = string
  default     = "e2-small"
}
