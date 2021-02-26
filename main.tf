# --- root/main ---

module "vpc" {
  source     = "./security"
  https_from = 443
  https_to   = 443
  prot = "tcp"
  confidential_ip = var.confidential_ip
}