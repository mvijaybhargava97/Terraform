variable "app-rg" {
  type = string
}

variable "app-location" {
  type = string
}

variable "func-name" {
  type = string
}

variable "storage-name" {
  type = string
}

variable "app-settings" {
  type = map(string)
}

variable "plan-name" {
  type = string
}

variable "storage_accesskey" {
  type = string
}
