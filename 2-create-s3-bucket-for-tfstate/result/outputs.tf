output "bucket_name" {
  value = aws_s3_bucket.example.id
}

output "dynamodb_table" {
  value = aws_dynamodb_table.terraform_state_lock.id
}
