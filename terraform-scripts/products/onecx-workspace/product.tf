
# TEAM ONECX-WORKSPACE
module "onecx-workspace-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-workspace"
  team_description = "OneCx workspace services team"
  team_members_file_path   = "products/onecx-workspace/team.csv"
}

# ONECX-WORKSPACE
module "onecx-workspace" {
  source = "../../modules/product"
  repository_name        = "onecx-workspace"
  repository_description = "OneCx workspace"
  team_id                = module.onecx-workspace-team.team_id
  team_name              = module.onecx-workspace-team.team_name
  labels = {
    onecx-workspace-svc          = "0ea5e9"
    onecx-workspace-bff          = "14b8a6"
    onecx-workspace-ui           = "6366f1"
  }
}

# ONECX-WORKSPACE-SVC
module "onecx-workspace-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-workspace-svc"
  repository_description = "OneCx workspace service"
  team_id                = module.onecx-workspace-team.team_id
}

# ONECX-WORKSPACE-BFF
module "onecx-workspace-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-workspace-bff"
  repository_description = "OneCx workspace BFF"
  team_id                = module.onecx-workspace-team.team_id
}

# ONECX-WORKSPACE-UI
module "onecx-workspace-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-workspace-ui"
  repository_description = "OneCx workspace UI"
  team_id                = module.onecx-workspace-team.team_id
}


# ONECX-WORKSPACE-EXIM-SVC
module "onecx-workspace-exim-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-workspace-exim-svc"
  repository_description = "OneCx workspace export/import service"
  team_id                = module.onecx-workspace-team.team_id
}