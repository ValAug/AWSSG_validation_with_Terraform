# --- root/main ---

module "vpc" {
  source          = "./security"
  https_from      = 443
  https_to        = 443
  ssh_from        = 22
  ssh_to          = 22
  prot            = "tcp"
  confidential_ip = var.confidential_ip
}