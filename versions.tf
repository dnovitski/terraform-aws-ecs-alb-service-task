terraform {
  required_version = ">= 0.14.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      # >= 6.40: s3_files_volume_configuration support (this fork's addition
      # to upstream cloudposse/terraform-aws-ecs-alb-service-task) needs the
      # AWS provider version that shipped native S3 Files resources.
      version = ">= 6.40"
    }
  }
}
