
# TEAM ONECX-SHELL
module "onecx-shell-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-shell"
  team_description = "OneCX shell services team"
  team_members_file_path   = "products/onecx-shell/team.csv"
}

# ONECX-SHELL
module "onecx-shell" {
  source = "../../modules/product"
  repository_name        = "onecx-shell"
  repository_description = "OneCX Shell"
  homepage_url           = "https://onecx.github.io/docs/onecx-shell/current/general"
  topics                 = ["product", "shell"]
  team_id                = module.onecx-shell-team.team_id
  team_name              = module.onecx-shell-team.team_name
}

# ONECX-SHELL-BFF
module "onecx-shell-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-shell-bff"
  repository_description = "OneCX Shell Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-shell/current/onecx-shell-bff"
  topics                 = ["java", "quarkus", "bff", "shell"]
  team_id                = module.onecx-shell-team.team_id
}

# ONECX-SHELL-UI
module "onecx-shell-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-shell-ui"
  repository_description = "OneCX Shell UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-shell/current/onecx-shell-ui"
  topics                 = ["angular", "ui", "shell"]
  team_id                = module.onecx-shell-team.team_id
}
