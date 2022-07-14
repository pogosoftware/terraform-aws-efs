locals {
  mount_target_file_system_id = var.create_file_system ? aws_efs_file_system.main[0].id : var.mount_target_file_system_id
}
