
# TEAM ONECX-TEST
module "onecx-test-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-test"
  team_description = "OneCX test services team"
  team_members_file_path   = "products/onecx-test/team.csv"
}

# ONECX-TEST
module "onecx-test" {
  source = "../../modules/product"
  repository_name        = "onecx-test"
  repository_description = "OneCX Test"
  homepage_url           = "https://onecx.github.io/docs/onecx-test/current/general"
  topics                 = ["product", "test"]
  team_id                = module.onecx-test-team.team_id
  team_name              = module.onecx-test-team.team_name
}

# ONECX-TEST-OPERATOR
module "onecx-test-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-test-operator"
  repository_description = "OneCX Test Operator"
  homepage_url           = "https://onecx.github.io/docs/onecx-test/current/onecx-test-operator"
  topics                 = ["java", "quarkus", "operator", "test"]
  team_id                = module.onecx-test-team.team_id
}

# ONECX-TEST-OIDC
module "onecx-test-oidc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-test-oidc"
  repository_description = "OneCX Test OIDC"
  homepage_url           = "https://onecx.github.io/docs/onecx-test/current/onecx-test-oidc"
  topics                 = ["java", "quarkus", "svc", "test"]
  team_id                = module.onecx-test-team.team_id
}