tf_infra_repos = {
  tf-infra-shared = {
    modules        = ["core"]
    default_branch = "main"
    strict         = true
    build_checks   = ["terraform / ci"]
  }

  tf-infra-stg = {
    modules = [
      "base",
      "k8s",
    ]

    default_branch = "main"
    strict         = true
    build_checks   = ["terraform / ci"]
  }
}

tf_module_repos = {
  tf-env = {
    modules        = []
    default_branch = "main"
    strict         = true
    build_checks   = ["terraform / ci"]
  }
}

misc_repos = {
  cicd = {
    modules        = []
    default_branch = "main"
    strict         = true
    build_checks   = []
  }

  k8s-apps-stg = {
    modules        = []
    default_branch = "main"
    strict         = true
    build_checks   = []
  }

  k8s-infra = {
    modules        = []
    default_branch = "main"
    strict         = true
    build_checks   = []
  }
}

tfc_organization = "bootstrapper-demo"
