variable "name" {}

variable "namespace" {
  default = "default"
}

variable "repository" {
  default = null
}

variable "chart" {}

variable "values" {
  default  = ["{}"]
  nullable = false
}

variable "max_history" {
  default  = 3
  nullable = false
}

variable "skip_crds" {
  default = false
}

variable "create_namespace" {
  default = false
}

variable "cleanup_on_fail" {
  default = true
}

variable "timeout" {
  default = null
}

variable "wait" {
  default = false
}

variable "chart_version" {
  default = null
}

variable "force_update" {
  default = null
}