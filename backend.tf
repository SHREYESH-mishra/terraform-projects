terraform{
  backend "s3" {
  bucket = "my-tf-test-baiv-bucket-101-354507106876"
  key = "dev/terraform.tfstate"
  region = "us-east-1"
  encrypt = true
  use_lockfile = true
  #lock_table = "techtutorialwithshreyesh-terraform-lock"

}
}