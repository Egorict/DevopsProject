variable "username" {
  description = "Reg.ru username"
  type        = string
}

variable "password" {
  description = "Reg.ru API password"
  type        = string
  sensitive   = true
}
