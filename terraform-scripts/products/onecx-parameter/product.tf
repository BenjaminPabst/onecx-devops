
# TEAM ONECX-PARAMETER
module "onecx-parameter-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-parameter"
  team_description = "onecx parameter management services team"
  team_members_file_path   = "products/onecx-parameter/team.csv"
}

# ONECX-PARAMETER
module "onecx-parameter" {
  source = "../../modules/product"
  repository_name        = "onecx-parameter"
  repository_description = "OneCX Parameter"
  homepage_url           = "https://onecx.github.io/docs/onecx-parameter/current/general"
  topics                 = ["product", "parameter"]
  team_id                = module.onecx-parameter-team.team_id
  team_name              = module.onecx-parameter-team.team_name
}

# ONECX-PARAMETER-SVC
module "onecx-parameter-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-parameter-svc"
  repository_description = "OneCX Parameter Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-parameter/current/onecx-parameter-svc"
  topics                 = ["java", "quarkus", "svc", "parameter"]
  team_id                = module.onecx-parameter-team.team_id
}

# ONECX-PARAMETER-BFF
module "onecx-parameter-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-parameter-bff"
  repository_description = "OneCX Parameter Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-parameter/current/onecx-parameter-bff"
  topics                 = ["java", "quarkus", "bff", "parameter"]
  team_id                = module.onecx-parameter-team.team_id
}

# ONECX-PARAMETER-UI
module "onecx-parameter-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-parameter-ui"
  repository_description = "OneCX Parameter UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-parameter/current/onecx-parameter-ui"
  topics                 = ["angular", "ui", "parameter"]
  team_id                = module.onecx-parameter-team.team_id
}

# ONECX-PARAMETER-OPERATOR
module "onecx-parameter-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-parameter-operator"
  repository_description = "OneCX Parameter K8s Operator"
  homepage_url           = "https://onecx.github.io/docs/onecx-parameter/current/onecx-parameter-operator"
  topics                 = ["java", "quarkus", "operator", "parameter"]
  team_id                = module.onecx-parameter-team.team_id
}