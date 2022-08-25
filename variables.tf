variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

variable "registry_name" {
  description = "registry name"
}

variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
}

variable "gke_num_nodes" {
  default     = 3
  description = "number of gke nodes"
}

