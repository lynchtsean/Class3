terraform{
  required_providers{
    azurerm={
      source="hashicorp/asurerm"
       version=">=3.70.0"#this version is for azurerm, NOT terraform version
  }
}
required_version=">=1.4.0"#this version is for Terraform Version, NOT azurerm
}
