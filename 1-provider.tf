# Terraform provider for Google Cloud
provider "google" {
  project = "terrafom-436819"
  region  = "us-central1"
}

# Create terraform backend and bucket
terraform {
  backend "gcs" {
    bucket = "tortor-tf-state-staging"
    prefix = "terraform/state"

  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>4.0"
    }
  }
}

