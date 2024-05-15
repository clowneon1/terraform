data "terraform_remote_state" "eip" {
  backend = "s3"

  config = {
    bucket = "tf-buc"
    key    = "network/eip.tfstate"
    region = "ap-south-1"
  }
}
