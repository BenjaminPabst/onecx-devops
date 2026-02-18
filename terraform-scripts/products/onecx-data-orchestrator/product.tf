# TEAM ONECX-DATA-ORCHESTRATOR
module "onecx-data-orchestrator-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-data-orchestrator"
  team_description = "OneCX data orchestrator services team"
  team_members_file_path   = "products/onecx-data-orchestrator/team.csv"
}

# ONECX-DATA-ORCHESTRATOR
module "onecx-data-orchestrator" {
  source = "../../modules/product"
  repository_name        = "onecx-data-orchestrator"
  repository_description = "OneCX Data Orchestrator"
  homepage_url           = "https://onecx.github.io/docs/onecx-data-orchestrator/current/general"
  topics                 = ["product", "data-orchestrator"]
  team_id                = module.onecx-data-orchestrator-team.team_id
  team_name              = module.onecx-data-orchestrator-team.team_name
}

# ONECX-DATA-ORCHESTRATOR-OPERATOR
module "onecx-data-orchestrator-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-data-orchestrator-operator"
  repository_description = "OneCX Data Orchestrator Operator"
  homepage_url           = "https://onecx.github.io/docs/onecx-data-orchestrator/current/onecx-data-orchestrator-operator"
  topics                 = ["java", "quarkus", "operator", "data-orchestrator"]
  team_id                = module.onecx-data-orchestrator-team.team_id
}


# ONECX-DATA-ORCHESTRATOR-BFF
module "onecx-data-orchestrator-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-data-orchestrator-bff"
  repository_description = "OneCX Data Orchestrator Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-data-orchestrator/current/onecx-data-orchestrator-bff"
  topics                 = ["java", "quarkus", "bff", "data-orchestrator"]
  team_id                = module.onecx-data-orchestrator-team.team_id
}

# ONECX-DATA-ORCHESTRATOR-UI
module "onecx-data-orchestrator-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-data-orchestrator-ui"
  repository_description = "OneCX Data Orchestrator UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-data-orchestrator/current/onecx-data-orchestrator-ui"
  topics                 = ["angular", "ui", "data-orchestrator"]
  team_id                = module.onecx-data-orchestrator-team.team_id
}