# GITHUB REPOSITORY
module "repository" {
  source = "../github/repository"
  repository_name        = var.repository_name
  repository_description = var.repository_description
  homepage_url          = var.homepage_url
  topics               = var.topics
  team_permission        = var.team_permission
  team_id                = var.team_id
  branch                 = var.branch
  project_repo           = true
  archived               = var.archived
  auto_merge             = var.auto_merge
}

# GITHUB REPOSITORY BRANCHES/PATTERNS
resource "github_branch_protection" "patterns" {
  for_each = toset( var.patterns )
  repository_id = module.repository.repository_name
  pattern = each.key

  require_conversation_resolution = true

  required_pull_request_reviews {
    required_approving_review_count = 1
    pull_request_bypassers = [
      "/tkit-dev"
    ]
    require_last_push_approval = true
  }
}

# GITHUB REPOSITORY LABELS
module "labels" {
  source = "../github/labels"
  repository_name = module.repository.repository_name
  labels = var.labels
}