
# TEAM ONECX-SERVICE
module "onecx-service-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-service"
  team_description = "OneCX Service team"
  team_members_file_path   = "products/onecx-service/team.csv"
}

# ONECX-SERVICE
module "onecx-service" {
  source = "../../modules/product"
  repository_name        = "onecx-service"
  repository_description = "OneCX Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-service/current/general"
  topics                 = ["product", "service"]
  team_id                = module.onecx-service-team.team_id
  team_name              = module.onecx-service-team.team_name
}

# ONECX-SERVICE-REDIRECT
module "onecx-service-redirect" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-service-redirect"
  repository_description = "OneCX Service Smart Redirect"
  homepage_url           = "https://onecx.github.io/docs/onecx-service/current/onecx-service-redirect"
  topics                 = ["java", "quarkus", "redirect", "service"]
  team_id                = module.onecx-service-team.team_id
}

# ONECX-SERVICE-AUTH-UI
module "onecx-service-auth-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-service-auth-ui"
  repository_description = "OneCX Service Custom Auth UI"
  topics                 = ["angular", "ui", "service", "auth"]
  team_id                = module.onecx-service-team.team_id
}

# ONECX-SERVICE-AUTH-BFF
module "onecx-service-auth-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-service-auth-bff"
  repository_description = "OneCX Service Custom Auth Backend-For-Frontend"
  topics                 = ["java", "quarkus", "bff", "service", "auth"]
  team_id                = module.onecx-service-team.team_id
}