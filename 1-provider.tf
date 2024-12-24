# Terraform provider for Google Cloud
provider "google" {
  project = var.project
  region  = var.region
}

# Create terraform backend and bucket
terraform {
  backend "gcs" {
    bucket = "bradmeh-tf-state-staging"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>4.0"
    }
  }
}

