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

variable "license_template" {
  description = "License template"
  type = string
  default = "apache-2.0"
}

variable "project_repo" {
  description = "Project repository. Not only source code repository"
  type = bool
  default = false
}

variable "archived" {
  description = "Specifies if the repository should be archived. Defaults to false. NOTE Currently, the API does not support unarchiving."
  type = bool
  default = false
}

variable "auto_merge" {
  description = "Set to true to allow auto-merging pull requests on the repository."
  type = bool
  default = false
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