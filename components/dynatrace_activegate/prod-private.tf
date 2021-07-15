# For private ActiveGate synthethic monitoring
module "prod_dynatrace_activegate_private" {

  providers = {
    azurerm     = azurerm
    azurerm.law = azurerm.law_prod
  }

  source               = "../../modules/dynatrace-activegate"
  instance_count       = 2
  network_zone         = "azure.cft"
  config_file_name     = "cloudconfig-private"
  enable_log_analytics = true

  common_tags = module.ctags.common_tags
}