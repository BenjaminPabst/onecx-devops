
# TEAM ONECX-TEST
module "onecx-test-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-test"
  team_description = "OneCx test services team"
  team_members_file_path   = "products/onecx-test/team.csv"
}

# ONECX-TEST
module "onecx-test" {
  source = "../../modules/product"
  repository_name        = "onecx-test"
  repository_description = "OneCx test"
  team_id                = module.onecx-test-team.team_id
  team_name              = module.onecx-test-team.team_name
}

# ONECX-TEST-OPERATOR
module "onecx-test-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-test-operator"
  repository_description = "OneCX test operator"
  team_id                = module.onecx-test-team.team_id
}
