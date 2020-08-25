variable "stream_name" {

  type        = string
  description = "(Required) A name to identify the stream. This is unique to the AWS account and region the Stream is created in."

}

variable "shard_count" {

  type        = number
  default     = 1
  description = "(Required) The number of shards that the stream will use. Amazon has guidelines for specifying the Stream size at should be referenced when creating a Kinesis stream"
}


variable "retention_period" {
  type        = number
  default     = 24
  description = "(Optional) Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 168 hours. Minimum value is 24. Default is 24."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "description"
}

variable "shard_level_metrics" {
  type        = list(string)
  default     = []
  description = "(Optional) A list of shard-level CloudWatch metrics which can be enabled for the stream. Note that the value ALL should not be used; instead you should provide an explicit list of metrics you wish to enable. Metrics information on: https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html"
}

variable "enforce_consume_deletion" {
  type        = bool
  default     = false
  description = "(Optional) A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error. The default value is false."
}

variable "encryption_type" {
  type        = string
  default     = "NONE"
  description = "(Optional) The encryption type to use. The only acceptable values are NONE or KMS. The default value is NONE."
}

variable "ksm_key_id" {
  type        = string
  default     = ""
  description = "(Optional) The GUID for the customer-managed KMS key to use for encryption. You can also use a Kinesis-owned master key by specifying the alias alias/aws/kinesis."
}
