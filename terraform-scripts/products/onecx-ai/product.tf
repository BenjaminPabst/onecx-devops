
# TEAM ONECX-AI
module "onecx-ai-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-ai"
  team_description = "OneCX AI team"
  team_members_file_path   = "products/onecx-ai/team.csv"
}

# ONECX-AI-Init
module "onecx-ai-init" {
  source = "../../modules/base"
  repository_name        = "onecx-ai-init"
  repository_description = "Initialization script for creating new workspaces containing all necessary AI instructions to get started with a new OneCX project."
  homepage_url           = "https://onecx.github.io/docs/documentation/current/"
  topics                 = ["ai", "agents", "skills", "prompts", "instructions"]
  team_id                = module.onecx-ai-team.team_id
}

# ONECX-AI-Toolkit
module "onecx-ai-toolkit" {
  source = "../../modules/base"
  repository_name        = "onecx-ai-toolkit"
  repository_description = "AI-Toolkit containing various use-case specific Skills, Agents, Prompts and Instrctions that simplify working with OneCX."
  homepage_url           = "https://onecx.github.io/docs/documentation/current/"
  topics                 = ["ai", "agents", "skills", "prompts", "instructions"]
  team_id                = module.onecx-ai-team.team_id
}
