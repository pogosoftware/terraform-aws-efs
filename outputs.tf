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
