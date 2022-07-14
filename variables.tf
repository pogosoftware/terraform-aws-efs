####################################################################################################
### aws_efs_file_system
####################################################################################################
variable "create_file_system" {
  default     = true
  description = "Determinates if create `aws_efs_file_system` resources or not"
  type        = bool
}

variable "file_system_availability_zone_name" {
  default     = null
  description = "The AWS Availability Zone in which to create the file system"
  type        = string
}

variable "file_system_creation_token" {
  default     = null
  description = "A unique name (a maximum of 64 characters are allowed) used as reference when creating the Elastic File System to ensure idempotent file system creation"
  type        = string
}

variable "file_system_encrypted" {
  default     = null
  description = "If true, the disk will be encrypted"
  type        = bool
}

variable "file_system_kms_key_id" {
  default     = null
  description = "The ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true"
  type        = string
}

variable "file_system_performance_mode" {
  default     = null
  description = "The file system performance mode. Can be either `generalPurpose` or `maxIO` (Default: `generalPurpose`)"
  type        = string
}

variable "file_system_provisioned_throughput_in_mibps" {
  default     = null
  description = "The throughput, measured in MiB/s, that you want to provision for the file system"
  type        = number
}

variable "file_system_throughput_mode" {
  default     = null
  description = "Throughput mode for the file system"
  type        = string
}

variable "file_system_tags" {
  default     = null
  description = "A map of tags to assign to the file system"
  type        = map(string)
}

variable "file_system_lifecycle_policy" {
  default     = null
  description = "A file system lifecycle policy object"
  type = object({
    transition_to_ia                    = optional(string)
    transition_to_primary_storage_class = optional(string)
  })
}
