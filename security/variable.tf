# ---variable/sec ---
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

variable "prot" {

  validation {
    condition     = var.prot == "tcp"
    error_message = "The protocol value must be tcp."
  }
}

variable "confidential_ip" {
    validation {
    condition     = var.confidential_ip != "0.0.0.0/0"
    error_message = "The confidential_ip should not be open to the world."
  }
}