variable "name" {
  type        = string
  description = "The name of the team."
}

variable "description" {
  type        = string
  description = "The description of the team."
  default     = null
}

variable "privacy" {
  type        = string
  description = "The level of privacy for the team."
  default     = "secret"

  validation {
    condition     = contains(["secret", "closed"], var.privacy)
    error_message = "Must be one of 'secret' or 'closed'"
  }
}

variable "parent_team_id" {
  type        = string
  description = "The ID of the parent team."
  default     = null
}

variable "ldap_dn" {
  type        = string
  description = "The LDAP DN of the team."
  default     = null
}

variable "create_default_maintainer" {
  type        = bool
  description = "Whether to create the default maintainer."
  default     = false
}

variable "security_manager" {
  type        = bool
  description = "Whether to create the security manager."
  default     = false
}
