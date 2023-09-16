variable "app_name" {
  default = ""
}
variable "app_environment" {
  default = ""
}
resource "aws_ecr_repository" "aws-ecr" {
  name = "${var.app_name}-repo"
  tags = {
    Name        = "${var.app_name}-repo"
    Environment = var.app_environment
  }
}