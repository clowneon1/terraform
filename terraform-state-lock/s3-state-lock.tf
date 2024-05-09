terraform {
  backend "s3" {
    bucket         = "tf-buc"
    key            = "remote/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "tf-state-lock"
  }
}
#we need to configure a dynamodb table which terraform will use to perform state locking.
  
}
