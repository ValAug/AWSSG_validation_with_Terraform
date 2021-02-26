# ---variable/nt---
variable "from" {
  
  validation {
    condition     = var.from == 443
    error_message = "The HTTPS value must be 443."
  }
}
variable "to" {
  
  validation {
    condition     = var.to == 443
    error_message = "The HTTPS value must be 443."
  }
}