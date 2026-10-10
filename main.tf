resource "aws_amplify_branch" "amplify_branches" {
  for_each = var.amplify_branches

  app_id                        = each.value.app_id
  branch_name                   = each.value.branch_name
  tags                          = each.value.tags
  stage                         = each.value.stage
  region                        = each.value.region
  pull_request_environment_name = each.value.pull_request_environment_name
  framework                     = each.value.framework
  environment_variables         = each.value.environment_variables
  enable_skew_protection        = each.value.enable_skew_protection
  enable_pull_request_preview   = each.value.enable_pull_request_preview
  enable_performance_mode       = each.value.enable_performance_mode
  enable_notification           = each.value.enable_notification
  enable_basic_auth             = each.value.enable_basic_auth
  enable_auto_build             = each.value.enable_auto_build
  display_name                  = each.value.display_name
  description                   = each.value.description
  basic_auth_credentials        = each.value.basic_auth_credentials
  backend_environment_arn       = each.value.backend_environment_arn
  tags_all                      = each.value.tags_all
  ttl                           = each.value.ttl
}

