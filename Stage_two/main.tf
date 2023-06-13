# main.tf

provider "vagrant" {}

resource "vagrant_box" "ubuntu" {
  name     = "geerlingguy/ubuntu2004"
  provider = "virtualbox"
}

resource "vagrant_machine" "example" {
  name     = "ubuntu"
  box      = vagrant_box.ubuntu.name
  provider = "virtualbox"

  provisioner "shell" {
    inline = [
      "apt-get update",
      "apt-get install -y apache2",
    ]
  }

  provisioner "local-exec" {
    command = "echo The VM is provisioned."
  }
}

resource "vagrant_network" "forwarded_port" {
  guest    = 80
  host     = 8300
  protocol = "tcp"
}
