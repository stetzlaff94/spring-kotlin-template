variable "image_name" {
  type        = string
  description = "Image name to pull"
}

variable "image_tag" {
  type        = string
  description = "tag to pull"
}

variable "image_pull_secret" {
  description = "Image pull secret value"
  type        = string
  sensitive   = true
}