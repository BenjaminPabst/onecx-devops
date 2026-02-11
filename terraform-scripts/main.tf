provider "aws" {
  region  = "eu-central-1"
}

provider "github" {
  owner = "onecx"
}

module "onecx-k8s" {
  source = "./products/onecx-k8s"
}

module "onecx-parameter" {
  source = "./products/onecx-parameter"
}

module "onecx-tenant" {
  source = "./products/onecx-tenant"
}

module "onecx-announcement" {
  source = "./products/onecx-announcement"
}

module "onecx-theme" {
  source = "./products/onecx-theme"
}

module "onecx-product-store" {
  source = "./products/onecx-product-store"
}

module "onecx-workspace" {
  source = "./products/onecx-workspace"
}

module "onecx-help" {
  source = "./products/onecx-help"
}

module "onecx-search-config" {
  source = "./products/onecx-search-config"
}

module "onecx-user-profile" {
  source = "./products/onecx-user-profile"
}

module "onecx-permission" {
  source = "./products/onecx-permission"
}

module "onecx-iam" {
  source = "./products/onecx-iam"
}

module "onecx-welcome" {
  source = "./products/onecx-welcome"
}

module "onecx-shell" {
  source = "./products/onecx-shell"
}

module "onecx-example" {
  source = "./products/onecx-example"
}

module "onecx-data-orchestrator" {
  source = "./products/onecx-data-orchestrator"
}

module "onecx-develop" {
  source = "./products/onecx-develop"
}

module "onecx-infra" {
  source = "./products/onecx-infra"
}

module "onecx-bookmark" {
  source = "./products/onecx-bookmark"
}

module "onecx-local" {
  source = "./products/onecx-local"
}

module "onecx-test" {
  source = "./products/onecx-test"
}

module "onecx-admin" {
  source = "./products/onecx-admin"
}

module "onecx-hello-world" {
  source = "./products/onecx-hello-world"
}

module "onecx-ai-provider" {
  source = "./products/onecx-ai-provider"
}

module "onecx-chat" {
  source = "./products/onecx-chat"
}

module "onecx-service" {
  source = "./products/onecx-service"
}

module "onecx-notification" {
  source = "./products/onecx-notification"
}