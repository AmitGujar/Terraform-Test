variable "resource_group_name" {
  default = "AmitRG"
}

variable "resource_group_location" {
  default     = "centralindia"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Prefix of the resource group name"
}

variable "agent_count" {
  default = 2
}

variable "aks_service_principal_app_id" {
  default = ""
}

variable "aks_service_principal_client_secret" {
  default = ""
}

variable "cluster_name" {
  default = "aks-test"
}

variable "dns_prefix" {
  default = "myCluster"
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}