terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options
project = "banesrevenge"
region = "us-east-2"
zone = "us-east-2a"
credentials = "banesrevenge-e53d51e332c9.json"
}

resource "google_storage_bucket" "the_anthem_bucket" {
  name          = "now_you_a_single_mom"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}
