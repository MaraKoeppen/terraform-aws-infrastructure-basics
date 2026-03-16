variable "type_instance" {
  type    = string
  default = "t3.micro"
}

variable "image_id" {
  type     = string
  nullable = false
}

variable "monitoring" {
  type    = bool
  default = false
}