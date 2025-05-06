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
