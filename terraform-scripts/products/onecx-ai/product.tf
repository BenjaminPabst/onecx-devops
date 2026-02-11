
# TEAM ONECX-AI-Agents
module "onecx-ai-agents-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-ai-agents"
  team_description = "OneCX AI-Agents team"
  team_members_file_path   = "products/onecx-ai-agents/team.csv"
}

# ONECX-AI-Agents-Init
module "onecx-ai-agents-init" {
  source = "../../modules/base"
  repository_name        = "onecx-ai-agents-init"
  repository_description = "Initialization script for creating new workspaces containing all necessary AI instructions to get started with a new OneCX project."
  homepage_url           = "https://onecx.github.io/docs/documentation/current/"
  topics                 = ["ai", "agents", "skills", "prompts", "instructions"]
  team_id                = module.onecx-ai-agents-team.team_id
}

# ONECX-AI-Agents-Toolkit
module "onecx-ai-agents-toolkit" {
  source = "../../modules/base"
  repository_name        = "onecx-ai-agents-toolkit"
  repository_description = "AI-Toolkit containing various use-case specific Skills, Agents, Prompts and Instrctions that simplify working with OneCX."
  homepage_url           = "https://onecx.github.io/docs/documentation/current/"
  topics                 = ["ai", "agents", "skills", "prompts", "instructions"]
  team_id                = module.onecx-ai-agents-team.team_id
}
