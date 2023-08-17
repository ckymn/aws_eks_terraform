resource "aws_ecr_repository" "demo_ecs_app" {
  name                 = var.aws_ecr_backend
  image_tag_mutability = "MUTABLE"

  # Docker görüntüleri depoya itildiğinde bu görüntüler otomatik olarak tarama işlemine tabi tutulur.Docker görüntü taraması, görüntünün güvenlik açıkları veya diğer güvenlik riskleri açısından taranması anlamına gelir
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "demo_ecs_frontend" {
  name                 = var.aws_ecr_frontend
  image_tag_mutability = "MUTABLE"

  # Docker görüntüleri depoya itildiğinde bu görüntüler otomatik olarak tarama işlemine tabi tutulur.Docker görüntü taraması, görüntünün güvenlik açıkları veya diğer güvenlik riskleri açısından taranması anlamına gelir
  image_scanning_configuration {
    scan_on_push = true
  }
}
