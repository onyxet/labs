data "terraform_remote_state" "global" {
  backend = "s3"

  config {
    bucket = "onx-global-state"
    region = "us-east-1"
    key    = "state/sample/sample.tfstate"
  }
}
