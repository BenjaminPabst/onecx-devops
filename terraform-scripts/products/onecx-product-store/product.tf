
# TEAM ONECX-PRODUCT-STORE
module "onecx-product-store-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-product-store"
  team_description = "OneCX product store services team"
  team_members_file_path   = "products/onecx-product-store/team.csv"
}

# ONECX-PRODUCT-STORE
module "onecx-product-store" {
  source = "../../modules/product"
  repository_name        = "onecx-product-store"
  repository_description = "OneCX Product Store"
  homepage_url           = "https://onecx.github.io/docs/onecx-product-store/current/general"
  topics                 = ["product", "product-store"]
  team_id                = module.onecx-product-store-team.team_id
  team_name              = module.onecx-product-store-team.team_name
}

# ONECX-PRODUCT-STORE-SVC
module "onecx-product-store-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-product-store-svc"
  repository_description = "OneCX Product Store Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-product-store/current/onecx-product-store-svc"
  topics                 = ["java", "quarkus", "svc", "product-store"]
  team_id                = module.onecx-product-store-team.team_id
}

# ONECX-PRODUCT-STORE-BFF
module "onecx-product-store-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-product-store-bff"
  repository_description = "OneCX Product Store Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-product-store/current/onecx-product-store-bff"
  topics                 = ["java", "quarkus", "bff", "product-store"]
  team_id                = module.onecx-product-store-team.team_id
}

# ONECX-PRODUCT-STORE-UI
module "onecx-product-store-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-product-store-ui"
  repository_description = "OneCX Product Store UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-product-store/current/onecx-product-store-ui"
  topics                 = ["angular", "ui", "product-store"]
  team_id                = module.onecx-product-store-team.team_id
}

# ONECX-PRODUCT-STORE-OPERATOR
module "onecx-product-store-operator" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-product-store-operator"
  repository_description = "OneCX Product Store K8s Operator"
  homepage_url           = "https://onecx.github.io/docs/onecx-product-store/current/onecx-product-store-operator"
  topics                 = ["java", "quarkus", "operator", "product-store"]
  team_id                = module.onecx-product-store-team.team_id
}

