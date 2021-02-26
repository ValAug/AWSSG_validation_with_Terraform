# ---variable/sec ---
variable "cidr" {
    
    validation {
    condition     = var.cidr == "10.0.0.0/16"
    error_message = "The vpc cidr_block should not be smaller than cidr requirements."
  }
}
variable "https_from" {
  description = "map sg validation test"

  validation {
    condition     = var.https_from == 443
    error_message = "The HTTPS value must be 443."
  }
}
variable "https_to" {

  validation {
    condition     = var.https_to == 443
    error_message = "The HTTPS value must be 443."
  }
}

variable "ssh_from" {
  description = "map sg validation test"

  validation {
    condition     = var.ssh_from == 22
    error_message = "The SSH value must be 22."
  }
}
variable "ssh_to" {

  validation {
    condition     = var.ssh_to == 22
    error_message = "The SSH port value must be 22."
  }
}
variable "confidential_ip" {
  validation {
    condition     = var.confidential_ip != "0.0.0.0/0"
    error_message = "The confidential_ip should not be open to the world."
  }
}
variable "prot" {

  validation {
    condition     = var.prot == "tcp"
    error_message = "The protocol value must be tcp."
  }
}

