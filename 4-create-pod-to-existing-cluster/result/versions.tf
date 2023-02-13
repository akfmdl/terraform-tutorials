terraform {
  required_version = "1.3.7"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.17.0"
    }
  }
  backend "s3" {
    bucket         = <s3 bucket name>
    key            = "test/pod/terraform.tfstate"
    region         = "ap-northeast-2"
    dynamodb_table = <dynamodb table name>
    encrypt        = true
  }
}
