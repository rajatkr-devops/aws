resource "aws_dynamodb_table" "terraform-lock" {
    name = "terraform-state"
    read_capacity = 5
    write_capacity = 5
    hash_key = "LockID"
    attribute {
      name = "LockID"
      type = "S"
    }

    tags = {
      "Name" = "Dynamodb Terraform State Lock Table"
    }
  
}