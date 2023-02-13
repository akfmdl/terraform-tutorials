data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket         = <s3 bucket name>
    key    = "test/cluster/terraform.tfstate"
    region = "ap-northeast-2"
    dynamodb_table = <dynamodb table name>
    encrypt        = true
  }
}
