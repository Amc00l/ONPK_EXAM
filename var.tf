variable "user_name" {
  type = string
}
variable "tenant_name" {
  type = string
  default = "ONPK_1"
}
variable "password" {
  type = string
}
variable "ext_network" {
  type = string
  default = "ext-net"
}
variable "flavor" {
  type = string
  default = "UnetLab"
}
variable "image" {
  type = string
  default = "0fc1152a-4037-4d89-a22a-60f477e2eba0"
}