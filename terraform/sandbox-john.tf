module "sandbox-john" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "johnsandbox25491+bryanvaldes@hotmail.com"
    AccountName               = "sandbox-aft-john"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "cursedhoundcreates@hotmail.com"
    SSOUserFirstName          = "Bryan"
    SSOUserLastName           = "Valdes"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
