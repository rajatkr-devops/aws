resource "aws_s3_bucket" "bucket" {
    bucket = "rajat-terraform-state-backend"
    versioning {
      enable =true
    }
    server_side_encryption_configuration {
      rule {
          apply_server_side_encryption_by_default {
              sse_algorithm = "AES256"
          }
      }
    }
    object_lock_configuration {
      object_lock_enable = "Enabled"
    }
    tags = {
      name = "S3 Remote terraform state file store"
    }
}