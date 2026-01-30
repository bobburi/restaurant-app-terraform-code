terraform {
  backend "gcs" {
    bucket  = "resturant-app-tfstate"
    prefix  = "terraform/state"
  }
}
