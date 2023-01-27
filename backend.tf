terraform {
  backend "s3" {
    bucket = "dp-kafka-terraform"
    key    = "kafka"
    region = "eu-central-1"
  }
}
