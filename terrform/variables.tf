variable "location" {
  description = "The location where resources are created"
  default     = "koreacentral"
}

variable "resource_group_name" {
  description = "The name of the resource group in which the resources are created"
  default     = "sanse20200107"
}

variable "application_port" {
    description = "The port that you want to expose to the external load balancer"
    default     = 80
}

variable "admin_password" {
    description = "Default password for admin"
    default = "1qazxsw23edC"
}