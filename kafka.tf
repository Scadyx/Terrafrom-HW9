resource "random_integer" "partitions" {
  min   = 1
  max   = 6
  count = 10
}

resource "random_string" "topic_name" {
  length           = 13
  special          = false
  count            = 10
}

resource "kafka_topic" "this" {
  count              = 10
  name               = element(random_string.topic_name[*].id, count.index)
  replication_factor = 1
  partitions         = element(random_integer.partitions[*].result, count.index)
}
