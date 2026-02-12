resource "aws_ecr_repository" "ecr_site" {
  name                 = "site_prod2"
  image_tag_mutability = "MUTABLE"
}