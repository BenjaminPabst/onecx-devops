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

variable "labels" {
  description = "The map of labels name and color"
  type = map(string)
  default = {
    docker-image = "0ea5e9"
    fix = "e9520e"
    feature = "0ee952"
    config = "c00ee9"
    helm = "0052cc"
  }
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
