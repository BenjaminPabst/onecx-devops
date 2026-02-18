variable "repository_name" {
  description = "name of the repository"
  type = string
  default = null
}

variable "repository_description" {
  description = "description of the repository"
  type = string
  default = null
}

variable "team_id" {
  description = "ID of the github team"
  type = string
  default = null
}

variable "team_name" {
  description = "Name of the github team"
  type = string
  default = null
}

variable "team_permission" {
  description = "The permissions of team members regarding the repository. Values: pull, triage, push, maintain, admin"
  type = string
  default = "maintain"
}

variable "branch" {
  description = "Repository default branch"
  type = string
  default = "main"
}

variable "patterns" {
  description = "List of branch pattern to apply"
  type = list(string)
  default = [
    "main",
    "fix/*.*.x",
    "[0-9]*.x"
  ]
}

variable "label_color_product" {
  description = "Color of the product label"
  type = string
  default = "f97316"
}

variable "label_color_team" {
  description = "Color of the team label"
  type = string
  default = "84cc16"
}

variable "labels" {
  description = "The map of labels name and color"
  type = map(string)
  default = {
    fix = "e9520e"
    feature = "0ee952"
    config = "c00ee9"
    helm = "0052cc"
  }
}

variable "pr_check" {
  description = "product pull request check context"
  type = list(string)
  default = [
    "pr / helm / helm build and push"
  ]
}

variable "archived" {
  description = "Specifies if the repository should be archived. Defaults to false."
  type = bool
  default = false
}

variable "auto_merge" {
  description = "Set to true to allow auto-merging pull requests on the repository."
  type = bool
  default = true
}

variable "homepage_url" {
  description = "URL of a page describing the project"
  type        = string
  default     = null
}

variable "topics" {
  description = "List of topics of the repository"
  type        = list(string)
  default     = []
}
