
# TEAM ONECX-DEVELOP
module "onecx-develop" {
  source = "../../modules/github/team"
  team_name        = "onecx-develop"
  team_description = "onecx-develop"
  team_members_file_path   = "products/onecx-develop/team.csv"
}

# ONECX-DEVELOP
module "onecx-develop-product" {
  source = "../../modules/product"
  repository_name        = "onecx-develop"
  repository_description = "OneCX Develop"
  homepage_url           = "https://onecx.github.io/docs/onecx-develop/current/general"
  topics                 = ["product", "develop"]
  team_id                = module.onecx-develop.team_id
  team_name              = module.onecx-develop.team_name
}

# ONECX-DEVELOP-ADMINER
module "onecx-develop-adminer" {
  source = "../../modules/base"
  repository_name        = "onecx-develop-adminer"
  repository_description = "OneCX Develop Adminer"
  team_id                = module.onecx-develop.team_id
  team_name              = module.onecx-develop.team_name
}
