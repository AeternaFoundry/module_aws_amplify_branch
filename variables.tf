variable "amplify_branches" {
  description = <<EOT
Map of amplify_branches, attributes below
Required:
    - app_id
    - branch_name
Optional:
    - backend_environment_arn
    - basic_auth_credentials
    - description
    - display_name
    - enable_auto_build
    - enable_basic_auth
    - enable_notification
    - enable_performance_mode
    - enable_pull_request_preview
    - enable_skew_protection
    - environment_variables
    - framework
    - pull_request_environment_name
    - region
    - stage
    - tags
    - tags_all
    - ttl
EOT

  type = map(object({
    app_id                        = string
    branch_name                   = string
    tags                          = optional(map(string))
    stage                         = optional(string)
    region                        = optional(string)
    pull_request_environment_name = optional(string)
    framework                     = optional(string)
    environment_variables         = optional(map(string))
    enable_skew_protection        = optional(bool)
    enable_pull_request_preview   = optional(bool)
    enable_performance_mode       = optional(bool)
    enable_notification           = optional(bool)
    enable_basic_auth             = optional(bool)
    enable_auto_build             = optional(bool)
    display_name                  = optional(string)
    description                   = optional(string)
    basic_auth_credentials        = optional(string)
    backend_environment_arn       = optional(string)
    tags_all                      = optional(map(string))
    ttl                           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.amplify_branches : (
        v.basic_auth_credentials == null || (length(v.basic_auth_credentials) >= 1 && length(v.basic_auth_credentials) <= 2000)
      )
    ])
    error_message = "must be between 1 and 2000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_branches : (
        can(regex("^[0-9A-Za-z/_.-]{1,255}$", v.branch_name))
      )
    ])
    error_message = "should be not be more than 255 letters, numbers, and the symbols /_.-"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_branches : (
        v.framework == null || (length(v.framework) >= 1 && length(v.framework) <= 255)
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_branches : (
        v.pull_request_environment_name == null || (length(v.pull_request_environment_name) >= 1 && length(v.pull_request_environment_name) <= 20)
      )
    ])
    error_message = "must be between 1 and 20 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

