# Terraform module for Kinesis Data Stream

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| aws | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| encryption\_type | (Optional) The encryption type to use. The only acceptable values are NONE or KMS. The default value is NONE. | `string` | `"NONE"` | no |
| enforce\_consume\_deletion | (Optional) A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error. The default value is false. | `bool` | `false` | no |
| ksm\_key\_id | (Optional) The GUID for the customer-managed KMS key to use for encryption. You can also use a Kinesis-owned master key by specifying the alias alias/aws/kinesis. | `string` | `""` | no |
| retention\_period | (Optional) Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 168 hours. Minimum value is 24. Default is 24. | `number` | `24` | no |
| shard\_count | (Required) The number of shards that the stream will use. Amazon has guidelines for specifying the Stream size at should be referenced when creating a Kinesis stream | `number` | `1` | no |
| shard\_level\_metrics | (Optional) A list of shard-level CloudWatch metrics which can be enabled for the stream. Note that the value ALL should not be used; instead you should provide an explicit list of metrics you wish to enable. Metrics information on: https://docs.aws.amazon.com/streams/latest/dev/monitoring-with-cloudwatch.html | `list(string)` | `[]` | no |
| stream\_name | (Required) A name to identify the stream. This is unique to the AWS account and region the Stream is created in. | `string` | n/a | yes |
| tags | description | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| aws\_kinesis\_stream\_arn | The Amazon Resource Name (ARN) specifying the Stream (same as id) |
| aws\_kinesis\_stream\_id | The unique Stream id |
| aws\_kinesis\_stream\_name | The unique Stream name |
| aws\_kinesis\_stream\_shard\_count | The count of Shards for this Stream |

