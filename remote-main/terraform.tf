terraform {
  backend "s3" {
    bucket         = "terraform-state-proj"
    key            = "env:/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true
  }
}
