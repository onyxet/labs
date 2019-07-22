terraform {
  required_version = ">= 0.11.8"

  backend "s3" {
    bucket = "onx-global-state"
    region = "us-east-1"
    key    = "state/sample/sample.tfstate"
  }
}
