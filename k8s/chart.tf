provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

terraform {
  backend "s3" {
    bucket         = "stephentetzlaff-terraform-state-bucket"
    key            = "demo/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "my-terraform-state-lock"
  }
}

resource "helm_release" "k8s_template" {
  name       = "spring-kt-demo"
  chart      = "./demo"

  set {
    name  = "metrics.enabled"
    value = "true"
  }

  set {
    name  = "image.repository"
    value = var.image_name
  }

  set {
    name  = "image.tag"
    value = var.image_tag
  }

  set {
    name  = "secrets.ecrRegistrySecret.dockerConfigJson"
    value = var.image_pull_secret
  }

}