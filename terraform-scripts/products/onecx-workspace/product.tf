
# TEAM ONECX-WORKSPACE
module "onecx-workspace-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-workspace"
  team_description = "OneCX workspace services team"
  team_members_file_path   = "products/onecx-workspace/team.csv"
}

# ONECX-WORKSPACE
module "onecx-workspace" {
  source = "../../modules/product"
  repository_name        = "onecx-workspace"
  repository_description = "OneCX Workspace"
  homepage_url           = "https://onecx.github.io/docs/onecx-workspace/current/general"
  topics                 = ["product", "workspace"]
  team_id                = module.onecx-workspace-team.team_id
  team_name              = module.onecx-workspace-team.team_name
}

# ONECX-WORKSPACE-SVC
module "onecx-workspace-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-workspace-svc"
  repository_description = "OneCX Workspace Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-workspace/current/onecx-workspace-svc"
  topics                 = ["java", "quarkus", "svc", "workspace"]
  team_id                = module.onecx-workspace-team.team_id
}

# ONECX-WORKSPACE-BFF
module "onecx-workspace-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-workspace-bff"
  repository_description = "OneCX Workspace Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-workspace/current/onecx-workspace-bff"
  topics                 = ["java", "quarkus", "bff", "workspace"]
  team_id                = module.onecx-workspace-team.team_id
}

# ONECX-WORKSPACE-UI
module "onecx-workspace-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-workspace-ui"
  repository_description = "OneCX Workspace UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-workspace/current/onecx-workspace-ui"
  topics                 = ["angular", "ui", "workspace"]
  team_id                = module.onecx-workspace-team.team_id
}

# ONECX-WORKSPACE-API-BFF
module "onecx-workspace-api-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-workspace-api-bff"
  repository_description = "OneCX Workspace API Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-workspace/current/onecx-workspace-api-bff"
  topics                 = ["java", "quarkus", "bff", "workspace", "external", "api"]
  team_id                = module.onecx-workspace-team.team_id
}

# ONECX-WORKSPACE-API-LEGACY
module "onecx-workspace-api-legacy" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-workspace-api-legacy"
  repository_description = "OneCX Workspace API Legacy"
  homepage_url           = "https://onecx.github.io/docs/onecx-workspace/current/onecx-workspace-api-legacy"
  topics                 = ["java", "quarkus", "svc", "workspace", "api", "legacy"]
  team_id                = module.onecx-workspace-team.team_id
}