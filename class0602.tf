locals {

  env_names = {

    dev     = "Development"

    staging = "Staging"

    prod    = "Production"

  }
 
  environment = lookup(local.env_names, "dev", "Unknown")

}
output "selected_environment_name" {

  value = local.environment

  description = "The friendly name of the current environment based on workspace."

}
 
