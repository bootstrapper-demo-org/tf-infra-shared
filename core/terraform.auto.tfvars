tf_infra_repos = {
  tf-infra-shared = {
    modules        = ["core"]
    default_branch = "main"
    strict         = true
    build_checks   = ["terraform / ci"]
  }
}

tf_module_repos = {}

misc_repos = {
  cicd = {
    modules        = []
    default_branch = "main"
    strict         = true
    build_checks   = []
  }
}

tfc_organization = "bootstrapper-demo"
