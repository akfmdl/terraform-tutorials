variable "region" {
  description = "The region to deploy to"
  default     = "ap-northeast-2"
}

variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket to store Terraform state"
}

variable "dynamodb_table" {
  type        = string
  description = "The name of the DynamoDB table to store Terraform state"
}
