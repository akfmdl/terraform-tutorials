terraform {
  required_version = "1.3.7"
  backend "s3" {
    bucket         = <s3 bucket name>
    key            = "test/tutorial/terraform.tfstate"
    region         = "ap-northeast-2"
    dynamodb_table = <dynamodb table name>
    encrypt        = true
  }
}
