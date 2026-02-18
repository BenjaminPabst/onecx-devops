variable "repository_name" {
  description = "name of the repository"
  type = string
  default = null
}

variable "sonar_app_id" {
  description = "Sonar application ID"
  type = string
  default = null
}

variable "sonar_context" {
  description = "sonar check context"
  type = string
  default = "SonarCloud Code Analysis"
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
