variable "machine_type" {
  type        = string
  description = "This is the machine type in our organization"
  default     = "g1-small"
}

variable "boot_image" {
  type    = string
  default = "geerlingguy/ubuntu2004"
}
variable "provider_box" {
  type    = string
  default = "virtualbox"
}

variable "protocol" {
  type    = string
  default = "tcp"
}

variable "guest_port" {
  type    = number
  default = 80
}

variable "host_port" {
  type    = number
  default = 8300
}


