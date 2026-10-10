output "amplify_branches_id" {
  description = "Map of id values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.id if v.id != null && length(v.id) > 0 }
}
output "amplify_branches_app_id" {
  description = "Map of app_id values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "amplify_branches_arn" {
  description = "Map of arn values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "amplify_branches_associated_resources" {
  description = "Map of associated_resources values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.associated_resources if v.associated_resources != null && length(v.associated_resources) > 0 }
}
output "amplify_branches_backend_environment_arn" {
  description = "Map of backend_environment_arn values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.backend_environment_arn if v.backend_environment_arn != null && length(v.backend_environment_arn) > 0 }
}
output "amplify_branches_basic_auth_credentials" {
  description = "Map of basic_auth_credentials values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.basic_auth_credentials if v.basic_auth_credentials != null && length(v.basic_auth_credentials) > 0 }
  sensitive   = true
}
output "amplify_branches_branch_name" {
  description = "Map of branch_name values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.branch_name if v.branch_name != null && length(v.branch_name) > 0 }
}
output "amplify_branches_custom_domains" {
  description = "Map of custom_domains values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.custom_domains if v.custom_domains != null && length(v.custom_domains) > 0 }
}
output "amplify_branches_description" {
  description = "Map of description values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.description if v.description != null && length(v.description) > 0 }
}
output "amplify_branches_destination_branch" {
  description = "Map of destination_branch values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.destination_branch if v.destination_branch != null && length(v.destination_branch) > 0 }
}
output "amplify_branches_display_name" {
  description = "Map of display_name values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "amplify_branches_enable_auto_build" {
  description = "Map of enable_auto_build values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.enable_auto_build if v.enable_auto_build != null }
}
output "amplify_branches_enable_basic_auth" {
  description = "Map of enable_basic_auth values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.enable_basic_auth if v.enable_basic_auth != null }
}
output "amplify_branches_enable_notification" {
  description = "Map of enable_notification values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.enable_notification if v.enable_notification != null }
}
output "amplify_branches_enable_performance_mode" {
  description = "Map of enable_performance_mode values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.enable_performance_mode if v.enable_performance_mode != null }
}
output "amplify_branches_enable_pull_request_preview" {
  description = "Map of enable_pull_request_preview values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.enable_pull_request_preview if v.enable_pull_request_preview != null }
}
output "amplify_branches_enable_skew_protection" {
  description = "Map of enable_skew_protection values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.enable_skew_protection if v.enable_skew_protection != null }
}
output "amplify_branches_environment_variables" {
  description = "Map of environment_variables values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.environment_variables if v.environment_variables != null && length(v.environment_variables) > 0 }
}
output "amplify_branches_framework" {
  description = "Map of framework values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.framework if v.framework != null && length(v.framework) > 0 }
}
output "amplify_branches_pull_request_environment_name" {
  description = "Map of pull_request_environment_name values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.pull_request_environment_name if v.pull_request_environment_name != null && length(v.pull_request_environment_name) > 0 }
}
output "amplify_branches_region" {
  description = "Map of region values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.region if v.region != null && length(v.region) > 0 }
}
output "amplify_branches_source_branch" {
  description = "Map of source_branch values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.source_branch if v.source_branch != null && length(v.source_branch) > 0 }
}
output "amplify_branches_stage" {
  description = "Map of stage values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.stage if v.stage != null && length(v.stage) > 0 }
}
output "amplify_branches_tags" {
  description = "Map of tags values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "amplify_branches_tags_all" {
  description = "Map of tags_all values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "amplify_branches_ttl" {
  description = "Map of ttl values across all amplify_branches, keyed the same as var.amplify_branches"
  value       = { for k, v in aws_amplify_branch.amplify_branches : k => v.ttl if v.ttl != null && length(v.ttl) > 0 }
}

