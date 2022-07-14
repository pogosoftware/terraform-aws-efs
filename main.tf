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

resource "aws_efs_mount_target" "main" {
  count = var.create_mount_target ? length(var.mount_target_subnet_ids) : 0

  file_system_id  = local.mount_target_file_system_id
  subnet_id       = element(var.mount_target_subnet_ids, count.index)
  ip_address      = var.mount_target_ip_address
  security_groups = var.mount_target_security_groups
}
