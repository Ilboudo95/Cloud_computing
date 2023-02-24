terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "1.49.0"
    }
  }
}

provider "openstack" {
  # Configuration options

  user_name = "user_inphb"
  password = "Default@2023"
  auth_url = "https://api.vpc.cloud4africa.net:5000/v3"
  tenant_name = "POC_INPHB"
  region = "RegionOne"
  domain_name = "Default"
}