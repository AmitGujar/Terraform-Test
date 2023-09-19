variable "resource_group_name" {
  default = "k8s-demo-rg"
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
  default = "246cfd43-77c5-4c63-8f77-d6a19a3876ec"
}

variable "aks_service_principal_client_secret" {
  default = "QMI8Q~tCFMcT85QTc1Kdn7hanAEj7nBCnpq3Vc7b"
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