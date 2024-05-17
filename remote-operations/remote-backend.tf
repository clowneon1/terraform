terraform {
  # this is one way(new way) of doing it
  # make sure to configute the terraform token using terraform login command
  # also create the appropriate org and workspace
  # for remote operations also the state file will be stored on terraform cloud.
  cloud {
    organization = "remote-org"

    workspaces {
      name = "remote-ops"
    }
  }
}
