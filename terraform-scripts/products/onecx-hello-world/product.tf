
# TEAM ONECX-HELLO-WORLD
module "onecx-hello-world-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-hello-world"
  team_description = "OneCX Hello World services team"
  team_members_file_path   = "products/onecx-hello-world/team.csv"
}

# ONECX-HELLO-WORLD
module "onecx-hello-world" {
  source = "../../modules/product"
  repository_name        = "onecx-hello-world"
  repository_description = "OneCX Hello World"
  homepage_url           = "https://onecx.github.io/docs/onecx-hello-world/current/general"
  topics                 = ["product", "hello-world"]
  team_id                = module.onecx-hello-world-team.team_id
  team_name              = module.onecx-hello-world-team.team_name
}

# ONECX-HELLO-WORLD-SVC
module "onecx-hello-world-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-hello-world-svc"
  repository_description = "OneCX Hello World Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-hello-world/current/onecx-hello-world-svc"
  topics                 = ["java", "quarkus", "svc", "hello-world"]
  team_id                = module.onecx-hello-world-team.team_id
}

# ONECX-HELLO-WORLD-BFF
module "onecx-hello-world-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-hello-world-bff"
  repository_description = "OneCX Hello World Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-hello-world/current/onecx-hello-world-bff"
  topics                 = ["java", "quarkus", "bff", "hello-world"]
  team_id                = module.onecx-hello-world-team.team_id
}

# ONECX-HELLO-WORLD-UI
module "onecx-hello-world-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-hello-world-ui"
  repository_description = "OneCX Hello World UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-hello-world/current/onecx-hello-world-ui"
  topics                 = ["angular", "ui", "hello-world"]
  team_id                = module.onecx-hello-world-team.team_id
}