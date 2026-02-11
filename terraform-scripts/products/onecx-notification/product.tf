
# TEAM ONECX-NOTIFICATION
module "onecx-notification-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-notification"
  team_description = "OneCX notification services team"
  team_members_file_path   = "products/onecx-notification/team.csv"
}

# ONECX-NOTIFICATION
module "onecx-notification" {
  source = "../../modules/product"
  repository_name        = "onecx-notification"
  repository_description = "OneCX Notification"
  homepage_url           = "https://onecx.github.io/docs/onecx-notification/current/general"
  topics                 = ["product", "notification"]
  team_id                = module.onecx-notification-team.team_id
  team_name              = module.onecx-notification-team.team_name
}

# ONECX-NOTIFICATION-SVC
module "onecx-notification-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-notification-svc"
  repository_description = "OneCX Notification Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-notification/current/onecx-notification-svc"
  topics                 = ["java", "quarkus", "svc", "notification"]
  team_id                = module.onecx-notification-team.team_id
}

# ONECX-NOTIFICATION-BFF
module "onecx-notification-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-notification-bff"
  repository_description = "OneCX Notification Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-notification/current/onecx-notification-bff"
  topics                 = ["java", "quarkus", "bff", "notification"]
  team_id                = module.onecx-notification-team.team_id
}

# ONECX-NOTIFICATION-UI
module "onecx-notification-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-notification-ui"
  repository_description = "OneCX Notification UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-notification/current/onecx-notification-ui"
  topics                 = ["angular", "ui", "notification"]
  team_id                = module.onecx-notification-team.team_id
}

