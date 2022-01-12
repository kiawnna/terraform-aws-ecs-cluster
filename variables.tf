variable "environment" {
  type = string
}
variable "capacity_provider_names" {
  type = list(string)
}
variable "default_capacity_provider_name" {
  type = string
}
variable "capacity_provider_weight" {
  type = number
  default = 1
}
//variable "naming_suffix" {
//  type = string
//}
