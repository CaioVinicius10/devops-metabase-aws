resource "aws_ecs_cluster" "cluster" {
  name = "cluster-meta-base"
  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}
