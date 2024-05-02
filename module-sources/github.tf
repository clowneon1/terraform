module "demoModule" {

  # using generic git repository
  #   source = "git::https://github.com/zealvora/tmp-repo.git"

  # direct support for github
  #   source = "github.com/zealvora/tmp-repo"

  # using ref to point to a specific version or branch in this case
  source = "git::https://github.com/zealvora/tmp-repo?ref=development"
}
