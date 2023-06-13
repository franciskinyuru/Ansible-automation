# main.tf

provider "vagrant" {}

resource "vagrant_box" "ubuntu" {
  name     = var.boot_image
  provider = var.provider_box
}

resource "vagrant_machine" "example" {
  name     = "ubuntu"
  box      = vagrant_box.ubuntu.name
  provider = var.provider_box

  provisioner "shell" {
    inline = [
      "apt-get update",
    ]
  }

  provisioner "local-exec" {
    command = "echo The VM is provisioned."
  }
}

resource "vagrant_network" "forwarded_port" {
  guest    = var.guest_port
  host     = var.host_port
  protocol = var.protocol
}
