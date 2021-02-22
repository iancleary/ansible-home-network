resource "linode_instance" "node" {
  label           = var.label
  image           = var.image
  region          = var.region
  type            = var.type
  authorized_keys = var.sshkeys
  tags = var.tags
  group = var.group
  root_pass       = var.root_pass
}
