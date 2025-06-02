variable "subscription_id"{
  type=string
}
variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "account_tier"{
  type=string
  default="Premium"
}
variable "account_replication_type"{
  type=string
  default="ZRS"
}
variable "lynchterraform"{
  type=string
  default="lynchterraform"
}
variable "string_numbers"{
  type=list(string)
  default=["42", "77", "13", "98", "3", "64", "55", "27", "89", "6"]
}
variable "sentence"{
  type=string
  description="A sentence to convert to uppercase"
  default="hello class"
}
variable "full_text" {
  type    = string
  default = "I love the country called Canada, it is awesome"
}
variable "folderlocation" {
  type    = string
  default = "mcityaml"
}
variable "my_name" {
  type = string
  default = "sean"
}
variable "vm_names" {
  description = "List of VM names to create"
  type        = list(string)
  default     = ["sean-vm1", "sean-vm2", "sean-vm3"]
}

variable "admin_username" {
  description = "Administrator username for the virtual machines"
  type        = string
  sensitive   = true
}

variable "admin_password" {
  description = "Administrator password for the virtual machines"
  type        = string
  sensitive   = true
}
