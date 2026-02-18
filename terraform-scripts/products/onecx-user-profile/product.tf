
# TEAM ONECX-USER-PROFILE
module "onecx-user-profile-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-user-profile"
  team_description = "OneCX user-profile services team"
  team_members_file_path   = "products/onecx-user-profile/team.csv"
}

# ONECX-USER-PROFILE
module "onecx-user-profile" {
  source = "../../modules/product"
  repository_name        = "onecx-user-profile"
  repository_description = "OneCX User Profile"
  homepage_url           = "https://onecx.github.io/docs/onecx-user-profile/current/general"
  topics                 = ["product", "user-profile"]
  team_id                = module.onecx-user-profile-team.team_id
  team_name              = module.onecx-user-profile-team.team_name
}

# ONECX-USER-PROFILE-SVC
module "onecx-user-profile-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-user-profile-svc"
  repository_description = "OneCX User Profile Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-user-profile/current/onecx-user-profile-svc"
  topics                 = ["java", "quarkus", "svc", "user-profile"]
  team_id                = module.onecx-user-profile-team.team_id
}

# ONECX-USER-PROFILE-AVATAR-SVC
module "onecx-user-profile-avatar-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-user-profile-avatar-svc"
  repository_description = "OneCX User Profile Avatar Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-user-profile/current/onecx-user-profile-avatar-svc"
  topics                 = ["java", "quarkus", "svc", "user-profile", "avatar"]
  team_id                = module.onecx-user-profile-team.team_id
}

# ONECX-USER-PROFILE-BFF
module "onecx-user-profile-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-user-profile-bff"
  repository_description = "OneCX User Profile Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-user-profile/current/onecx-user-profile-bff"
  topics                 = ["java", "quarkus", "bff", "user-profile"]
  team_id                = module.onecx-user-profile-team.team_id
}

# ONECX-USER-PROFILE-UI
module "onecx-user-profile-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-user-profile-ui"
  repository_description = "OneCX User Profile UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-user-profile/current/onecx-user-profile-ui"
  topics                 = ["angular", "ui", "user-profile"]
  team_id                = module.onecx-user-profile-team.team_id
}
