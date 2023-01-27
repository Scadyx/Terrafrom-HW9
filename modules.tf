terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
    kafka = {
      source  = "Mongey/kafka"
      version = "0.5.2"
    }
  }
}
