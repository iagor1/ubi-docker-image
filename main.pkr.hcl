packer {
  required_plugins {
    docker = {
      version = ">= 0.0.7"
      source  = "github.com/hashicorp/docker"
    }
  }
}
source "docker" "rhel9" {
  image  = "registry.access.redhat.com/ubi9/ubi:9.1.0-1782"
  commit = true
}

build {
  sources = ["source.docker.rhel9"]
   provisioner "shell" {
    script = "setup.sh"
  }
  post-processor "docker-tag" {
    repository = "rhel9-docker"
    tag        = ["ubi9"]
  }
}
