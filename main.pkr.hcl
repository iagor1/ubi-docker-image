source "docker" "rhel9" {
  image  = "registry.access.redhat.com/ubi9/ubi:9.1.0-1782"
  commit = true
}

build {
  sources = ["source.docker.rhel9"]
  provisioner "shell" {
    inline = ["yum update -y","yum install ca-certificates -y"]
  }
  post-processor "docker-tag" {
    repository = "rhel9-docker"
    tag        = ["ubi9"]
  }
}
