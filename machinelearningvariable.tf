variable "location" {
  description = "The Azure region to deploy resources in."
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "Name of the resource group."
  default     = "ml_rg-resources"
}

variable "app_insights_name" {
  description = "Name of the Application Insights resource."
  default     = "workspace-mcit-ai"
}

variable "key_vault_name" {
  description = "Name of the Azure Key Vault."
  default     = "workspaceexamplekeyvault"
}

variable "storage_account_name" {
  description = "Name of the Azure Storage Account."
  default     = "workspacestorageaccount"
}

variable "ml_workspace_name" {
  description = "Name of the Azure Machine Learning Workspace."
  default     = "mcit-workspace"
}
