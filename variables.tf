variable "namespace" {
  description = "The project namespace."
  type        = string
  validation {
    condition     = length(var.namespace) >= 5 && length(var.namespace) <= 15
    error_message = "Namespace requirement of 5 to 15 characters."
  }
}

variable "region" {
  description = "AWS Region"
  type        = string
}

variable "principal_arns" {
  description = "A list of principal arns allowed to assume the IAM role"
  default     = null
  type        = list(string)
}

variable "force_destroy_state" {
  description = "Force destroy the s3 bucket containing state files?"
  default     = true
  type        = bool
}