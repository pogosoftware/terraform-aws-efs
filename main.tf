resource "aws_efs_file_system" "main" {
  count = var.create_file_system ? 1 : 0

  availability_zone_name          = var.file_system_availability_zone_name
  creation_token                  = var.file_system_creation_token
  encrypted                       = var.file_system_encrypted
  kms_key_id                      = var.file_system_kms_key_id
  performance_mode                = var.file_system_performance_mode
  provisioned_throughput_in_mibps = var.file_system_provisioned_throughput_in_mibps
  throughput_mode                 = var.file_system_throughput_mode
  tags                            = var.file_system_tags

  dynamic "lifecycle_policy" {
    for_each = try([var.file_system_lifecycle_policy], [])

    content {
      transition_to_ia                    = lookup(lifecycle_policy.value, "transition_to_ia", null)
      transition_to_primary_storage_class = lookup(lifecycle_policy.value, "transition_to_primary_storage_class", null)
    }
  }
}
