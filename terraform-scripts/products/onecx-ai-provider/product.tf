
# TEAM ONECX-AI-PROVIDER
module "onecx-ai-provider-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-ai-provider"
  team_description = "OneCX AI Provider services team"
  team_members_file_path   = "products/onecx-ai-provider/team.csv"
}

# ONECX-AI-PROVIDER
module "onecx-ai-provider" {
  source = "../../modules/product"
  repository_name        = "onecx-ai-provider"
  repository_description = "OneCX AI Provider"
  homepage_url           = "https://onecx.github.io/docs/onecx-ai-provider/current/general"
  topics                 = ["product", "ai-provider"]
  team_id                = module.onecx-ai-provider-team.team_id
  team_name              = module.onecx-ai-provider-team.team_name
}

# ONECX-AI-PROVIDER-SVC
module "onecx-ai-provider-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-ai-provider-svc"
  repository_description = "OneCX AI Provider Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-ai-provider/current/onecx-ai-provider-svc"
  topics                 = ["java", "quarkus", "svc", "ai-provider"]
  team_id                = module.onecx-ai-provider-team.team_id
}

# ONECX-AI-PROVIDER-BFF
module "onecx-ai-provider-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-ai-provider-bff"
  repository_description = "OneCX AI Provider Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-ai-provider/current/onecx-ai-provider-bff"
  topics                 = ["java", "quarkus", "bff", "ai-provider"]
  team_id                = module.onecx-ai-provider-team.team_id
}

# ONECX-AI-PROVIDER-UI
module "onecx-ai-provider-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-ai-provider-ui"
  repository_description = "OneCX AI Provider UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-ai-provider/current/onecx-ai-provider-ui"
  topics                 = ["angular", "ui", "ai-provider"]
  team_id                = module.onecx-ai-provider-team.team_id
}
