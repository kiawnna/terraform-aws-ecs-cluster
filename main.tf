resource "aws_ecs_cluster" "ecs_cluster" {
  name               = "shared-${var.environment}-ecs-cluster"
  capacity_providers = var.capacity_provider_names

  default_capacity_provider_strategy {
    capacity_provider = var.default_capacity_provider_name
    weight            = var.capacity_provider_weight
  }
  tags = {
    Name = "shared-${var.environment}-ecs-cluster"
    Deployment_Method = "terraform"
    Environment = var.environment
  }
}