
# TEAM ONECX-LOCAL
module "onecx-local" {
  source = "../../modules/github/team"
  team_name        = "onecx-local"
  team_description = "onecx-local"
  team_members_file_path   = "products/onecx-local/team.csv"
}


# ONECX-LOCAL-ENV
module "onecx-local-env" {
  source = "../../modules/base"
  repository_name        = "onecx-local-env"
  repository_description = "OneCX Local Environment Setup"
  homepage_url           = "https://onecx.github.io/docs/documentation/current/onecx-local-env/index.html"
  topics                 = ["docker", "local-env", "local", "environment"]
  team_id                = module.onecx-local.team_id
  team_name              = module.onecx-local.team_name
}

# ONECX-LOCAL-ENV-CLI
module "onecx-local-env-cli" {
  source = "../../modules/base"
  repository_name        = "onecx-local-env-cli"
  repository_description = "OneCX Local Environment CLI"
  homepage_url           = "https://onecx.github.io/docs/documentation/current/onecx-local-env/index.html"
  topics                 = ["cli", "local-env", "local", "environment"]
  team_id                = module.onecx-local.team_id
  team_name              = module.onecx-local.team_name
}
