locals {
  names = ["eastus", "westeurope", "centralindia"]
  }
locals {
  vms = ["vm1", "vm2", "vm3"]

  vms_map = { for idx, name in local.vms : "vm_${idx}" => name }
  }
locals {
  rg_names = ["dev-rg", "test-rg", "prod-rg"]
  }

resource "azurerm_resource_group" "rg" {
  for_each = toset(local.rg_names)

  name     = each.key
  location = "East US"
  }
locals {
  keys   = ["env", "team", "owner"]
  values = ["prod", "devops", "alice"]

  combined_map = zipmap(local.keys, local.values)
  }
locals {
  regions    = ["eastus", "westeurope", "southindia", "centralus"]
  us_regions = [for r in local.regions : r if can(regex("us", r))]
  }
locals {
  apps = ["api", "frontend", "worker", "db"]
  }
locals {
  cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

resource "azurerm_resource_group" "sean" {
  name     = "sean-resources"
  location = "West Europe"
}

resource "azurerm_virtual_network" "sean" {
  name                = "sean-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.sean.location
  resource_group_name = azurerm_resource_group.sean.name
}

resource "azurerm_subnet" "sean" {
  for_each = { for idx, cidr in local.cidrs : "subnet_${idx}" => cidr }

  name                 = each.key
  resource_group_name  = azurerm_resource_group.sean.name
  virtual_network_name = azurerm_virtual_network.sean.name
  address_prefixes     = [each.value]

  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/join/action",
        "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"
      ]
    }
  }
}
locals {
  vm_names = var.vm_names
}

resource "azurerm_resource_group" "lynch" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "lynch" {
  name                = "lynch-network"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "lynch" {
  name                 = "lynch-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.lynch.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "lynch" {
  for_each            = toset(local.vm_names)
  name                = "${each.key}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.lynch.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "lynch" {
  for_each              = toset(local.vm_names)
  name                  = each.key
  resource_group_name   = var.resource_group_name
  location              = var.location
  size                  = "Standard_F2"
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  network_interface_ids = [
    azurerm_network_interface.lynch[each.key].id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
