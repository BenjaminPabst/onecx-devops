
# TEAM ONECX-HELP
module "onecx-help-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-help"
  team_description = "OneCX Help services team"
  team_members_file_path   = "products/onecx-help/team.csv"
}

# ONECX-HELP
module "onecx-help" {
  source = "../../modules/product"
  repository_name        = "onecx-help"
  repository_description = "OneCX Help"
  homepage_url           = "https://onecx.github.io/docs/onecx-help/current/general"
  topics                 = ["product", "help"]
  team_id                = module.onecx-help-team.team_id
  team_name              = module.onecx-help-team.team_name
}

# ONECX-HELP-SVC
module "onecx-help-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-help-svc"
  repository_description = "OneCX Help Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-help/current/onecx-help-svc"
  topics                 = ["java", "quarkus", "svc", "help"]
  team_id                = module.onecx-help-team.team_id
}

# ONECX-HELP-BFF
module "onecx-help-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-help-bff"
  repository_description = "OneCX Help Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-help/current/onecx-help-bff"
  topics                 = ["java", "quarkus", "bff", "help"]
  team_id                = module.onecx-help-team.team_id
}

# ONECX-HELP-UI
module "onecx-help-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-help-ui"
  repository_description = "OneCX Help UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-help/current/onecx-help-ui"
  topics                 = ["angular", "ui", "help"]
  team_id                = module.onecx-help-team.team_id
}