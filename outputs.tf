####################################################################################################
### aws_efs_file_system
####################################################################################################
output "file_system_arn" {
  description = "Amazon Resource Name of the file system"
  value       = try(aws_efs_file_system.main[0].arn, "")
}

output "file_system_id" {
  description = "The ID that identifies the file system"
  value       = try(aws_efs_file_system.main[0].id, "")
}

output "file_system_creation_token" {
  description = "A unique name (a maximum of 64 characters are allowed) used as reference when creating the Elastic File System to ensure idempotent file system creation"
  value       = try(aws_efs_file_system.main[0].creation_token, "")
}

####################################################################################################
### aws_efs_mount_target
####################################################################################################
output "mount_target_id" {
  description = "The ID of the mount target"
  value       = try(aws_efs_mount_target.main[0].id, "")
}

output "mount_target_dns_name" {
  description = "The DNS name for the EFS file system"
  value       = try(aws_efs_mount_target.main[0].dns_name, "")
}

output "mount_target_file_system_arn" {
  description = "Amazon Resource Name of the file system"
  value       = try(aws_efs_mount_target.main[0].file_system_arn, "")
}
