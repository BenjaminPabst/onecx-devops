
# TEAM ONECX-CHAT
module "onecx-chat-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-chat"
  team_description = "OneCX Chat services team"
  team_members_file_path   = "products/onecx-chat/team.csv"
}

# ONECX-CHAT
module "onecx-chat" {
  source = "../../modules/product"
  repository_name        = "onecx-chat"
  repository_description = "OneCX Chat"
  homepage_url           = "https://onecx.github.io/docs/onecx-chat/current/general"
  topics                 = ["product", "chat"]
  team_id                = module.onecx-chat-team.team_id
  team_name              = module.onecx-chat-team.team_name
}

# ONECX-CHAT-SVC
module "onecx-chat-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-chat-svc"
  repository_description = "OneCX Chat Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-chat/current/onecx-chat-svc"
  topics                 = ["java", "quarkus", "svc", "chat"]
  team_id                = module.onecx-chat-team.team_id
}

# ONECX-CHAT-BFF
module "onecx-chat-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-chat-bff"
  repository_description = "OneCX Chat Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-chat/current/onecx-chat-bff"
  topics                 = ["java", "quarkus", "bff", "chat"]
  team_id                = module.onecx-chat-team.team_id
}

# ONECX-CHAT-UI
module "onecx-chat-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-chat-ui"
  repository_description = "OneCX Chat UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-chat/current/onecx-chat-ui"
  topics                 = ["angular", "ui", "chat"]
  team_id                = module.onecx-chat-team.team_id
}
