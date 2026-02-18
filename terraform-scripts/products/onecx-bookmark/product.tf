
# TEAM ONECX-BOOKMARK
module "onecx-bookmark-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-bookmark"
  team_description = "onecx bookmark management services team"
  team_members_file_path   = "products/onecx-bookmark/team.csv"
}

# ONECX-BOOKMARK
module "onecx-bookmark" {
  source = "../../modules/product"
  repository_name        = "onecx-bookmark"
  repository_description = "OneCX Bookmark"
  homepage_url           = "https://onecx.github.io/docs/onecx-bookmark/current/general"
  topics                 = ["product", "bookmark"]
  team_id                = module.onecx-bookmark-team.team_id
  team_name              = module.onecx-bookmark-team.team_name
}

# ONECX-BOOKMARK-SVC
module "onecx-bookmark-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-bookmark-svc"
  repository_description = "OneCX Bookmark Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-bookmark/current/onecx-bookmark-svc"
  topics                 = ["java", "quarkus", "svc", "bookmark"]
  team_id                = module.onecx-bookmark-team.team_id
}

# ONECX-BOOKMARK-BFF
module "onecx-bookmark-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-bookmark-bff"
  repository_description = "OneCX Bookmark Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-bookmark/current/onecx-bookmark-bff"
  topics                 = ["java", "quarkus", "bff", "bookmark"]
  team_id                = module.onecx-bookmark-team.team_id
}

# ONECX-BOOKMARK-UI
module "onecx-bookmark-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-bookmark-ui"
  repository_description = "OneCX Bookmark UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-bookmark/current/onecx-bookmark-ui"
  topics                 = ["angular", "ui", "bookmark"]
  team_id                = module.onecx-bookmark-team.team_id
}