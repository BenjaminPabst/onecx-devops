
# TEAM ONECX-PERMISSION
module "onecx-permission-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-permission"
  team_description = "OneCX permission services team"
  team_members_file_path   = "products/onecx-permission/team.csv"
}

# ONECX-PERMISSION
module "onecx-permission" {
  source = "../../modules/product"
  repository_name        = "onecx-permission"
  repository_description = "OneCX Permission"
  homepage_url           = "https://onecx.github.io/docs/onecx-permission/current/general"
  topics                 = ["product", "permission"]
  team_id                = module.onecx-permission-team.team_id
  team_name              = module.onecx-permission-team.team_name
}

# ONECX-PERMISSION-SVC
module "onecx-permission-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-permission-svc"
  repository_description = "OneCX Permission Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-permission/current/onecx-permission-svc"
  topics                 = ["java", "quarkus", "svc", "permission"]
  team_id                = module.onecx-permission-team.team_id
}

# ONECX-PERMISSION-BFF
module "onecx-permission-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-permission-bff"
  repository_description = "OneCX Permission Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-permission/current/onecx-permission-bff"
  topics                 = ["java", "quarkus", "bff", "permission"]
  team_id                = module.onecx-permission-team.team_id
}

# ONECX-PERMISSION-UI
module "onecx-permission-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-permission-ui"
  repository_description = "OneCX Permission UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-permission/current/onecx-permission-ui"
  topics                 = ["angular", "ui", "permission"]
  team_id                = module.onecx-permission-team.team_id
}

# ONECX-PERMISSION-OPERATOR
module "onecx-permission-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-permission-operator"
  repository_description = "OneCX Permission K8s Operator"
  homepage_url           = "https://onecx.github.io/docs/onecx-permission/current/onecx-permission-operator"
  topics                 = ["java", "quarkus", "operator", "permission"]
  team_id                = module.onecx-permission-team.team_id
}

