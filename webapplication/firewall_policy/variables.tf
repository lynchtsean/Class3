variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "example-rg"
}

variable "location" {
  description = "Azure location"
  type        = string
  default     = "West Europe"
}

variable "waf_policy_name" {
  description = "Name of the WAF policy"
  type        = string
  default     = "example-wafpolicy"
}
