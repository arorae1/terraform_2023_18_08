terraform {
  cloud {
    organization = "TFC_Labs_2023_08_18"

    workspaces {
      name = "devops-aws-myapp-dev"
    }
  }
}

