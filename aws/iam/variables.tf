variable "iam_user_name" {
    description = "IAM User name"
    default     = "iam-user"
}

variable "path" {
    description = "Path under which user can be created"
    default     = "/"
}

variable "force_destroy" {
    description     = "will force to destroy the user"
    default         = false
}

variable "description" {
    default = "Description for the IAM User"
}

