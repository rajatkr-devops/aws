terraform {
  backend "s3" {
      bucket = "rajat-terraform-state-backend"
      key = "terraform.tfstate"
      region = "us-east-2"
      dynamodb_table = "terraform-state"
  }
}