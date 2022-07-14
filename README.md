# terraform-aws-efs

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.22 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.22.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_efs_file_system.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_file_system"></a> [create\_file\_system](#input\_create\_file\_system) | Determinates if create `aws_efs_file_system` resources or not | `bool` | `true` | no |
| <a name="input_file_system_availability_zone_name"></a> [file\_system\_availability\_zone\_name](#input\_file\_system\_availability\_zone\_name) | The AWS Availability Zone in which to create the file system | `string` | `null` | no |
| <a name="input_file_system_creation_token"></a> [file\_system\_creation\_token](#input\_file\_system\_creation\_token) | A unique name (a maximum of 64 characters are allowed) used as reference when creating the Elastic File System to ensure idempotent file system creation | `string` | `null` | no |
| <a name="input_file_system_encrypted"></a> [file\_system\_encrypted](#input\_file\_system\_encrypted) | If true, the disk will be encrypted | `bool` | `null` | no |
| <a name="input_file_system_kms_key_id"></a> [file\_system\_kms\_key\_id](#input\_file\_system\_kms\_key\_id) | The ARN for the KMS encryption key. When specifying kms\_key\_id, encrypted needs to be set to true | `string` | `null` | no |
| <a name="input_file_system_lifecycle_policy"></a> [file\_system\_lifecycle\_policy](#input\_file\_system\_lifecycle\_policy) | A file system lifecycle policy object | <pre>object({<br>    transition_to_ia                    = optional(string)<br>    transition_to_primary_storage_class = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_file_system_performance_mode"></a> [file\_system\_performance\_mode](#input\_file\_system\_performance\_mode) | The file system performance mode. Can be either `generalPurpose` or `maxIO` (Default: `generalPurpose`) | `string` | `null` | no |
| <a name="input_file_system_provisioned_throughput_in_mibps"></a> [file\_system\_provisioned\_throughput\_in\_mibps](#input\_file\_system\_provisioned\_throughput\_in\_mibps) | The throughput, measured in MiB/s, that you want to provision for the file system | `number` | `null` | no |
| <a name="input_file_system_tags"></a> [file\_system\_tags](#input\_file\_system\_tags) | A map of tags to assign to the file system | `map(string)` | `null` | no |
| <a name="input_file_system_throughput_mode"></a> [file\_system\_throughput\_mode](#input\_file\_system\_throughput\_mode) | Throughput mode for the file system | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_file_system_arn"></a> [file\_system\_arn](#output\_file\_system\_arn) | Amazon Resource Name of the file system |
| <a name="output_file_system_creation_token"></a> [file\_system\_creation\_token](#output\_file\_system\_creation\_token) | A unique name (a maximum of 64 characters are allowed) used as reference when creating the Elastic File System to ensure idempotent file system creation |
| <a name="output_file_system_id"></a> [file\_system\_id](#output\_file\_system\_id) | The ID that identifies the file system |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->