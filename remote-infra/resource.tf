resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "terraform-state-proj"
}

resource "aws_dynamodb_table" "my_dynamoDB_table" {
    name = "statelocking"
    billing_mode   = "PROVISIONED"
    read_capacity  = 25  
    write_capacity = 25  
    hash_key = "LOCKID"
    attribute {
    name = "LOCKID"
    type = "S"
    }
  
}