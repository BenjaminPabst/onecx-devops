
# TEAM ONECX-THEME
module "onecx-theme-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-theme"
  team_description = "OneCX Theme services team"
  team_members_file_path   = "products/onecx-theme/team.csv"
}

# ONECX-THEME
module "onecx-theme" {
  source = "../../modules/product"
  repository_name        = "onecx-theme"
  repository_description = "OneCX Theme"
  homepage_url           = "https://onecx.github.io/docs/onecx-theme/current/general"
  topics                 = ["product", "theme"]
  team_id                = module.onecx-theme-team.team_id
  team_name              = module.onecx-theme-team.team_name
}

# ONECX-THEME-SVC
module "onecx-theme-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-theme-svc"
  repository_description = "OneCX Theme Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-theme/current/onecx-theme-svc"
  topics                 = ["java", "quarkus", "svc", "theme"]
  team_id                = module.onecx-theme-team.team_id
}

# ONECX-THEME-BFF
module "onecx-theme-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-theme-bff"
  repository_description = "OneCX Theme Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-theme/current/onecx-theme-bff"
  topics                 = ["java", "quarkus", "bff", "theme"]
  team_id                = module.onecx-theme-team.team_id
}

# ONECX-THEME-UI
module "onecx-theme-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-theme-ui"
  repository_description = "OneCX Theme UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-theme/current/onecx-theme-ui"
  topics                 = ["angular", "ui", "theme"]
  team_id                = module.onecx-theme-team.team_id
}