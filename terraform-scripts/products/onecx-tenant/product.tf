
# TEAM ONECX-TENANT
module "onecx-tenant-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-tenant"
  team_description = "OneCX Tenant management services team"
  team_members_file_path   = "products/onecx-tenant/team.csv"
}

# ONECX-TENANT
module "onecx-tenant" {
  source = "../../modules/product"
  repository_name        = "onecx-tenant"
  repository_description = "OneCX Tenant"
  homepage_url           = "https://onecx.github.io/docs/onecx-tenant/current/general"
  topics                 = ["product", "tenant"]
  team_id                = module.onecx-tenant-team.team_id
  team_name              = module.onecx-tenant-team.team_name
}

# ONECX-TENANT-SVC
module "onecx-tenant-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-tenant-svc"
  repository_description = "OneCX Tenant Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-tenant/current/onecx-tenant-svc"
  topics                 = ["java", "quarkus", "svc", "tenant"]
  team_id                = module.onecx-tenant-team.team_id
}

# ONECX-TENANT-BFF
module "onecx-tenant-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-tenant-bff"
  repository_description = "OneCX Tenant Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-tenant/current/onecx-tenant-bff"
  topics                 = ["java", "quarkus", "bff", "tenant"]
  team_id                = module.onecx-tenant-team.team_id
}

# ONECX-TENANT-UI
module "onecx-tenant-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-tenant-ui"
  repository_description = "OneCX Tenant UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-tenant/current/onecx-tenant-ui"
  topics                 = ["angular", "ui", "tenant"]
  team_id                = module.onecx-tenant-team.team_id
}