resource "openstack_compute_keypair_v2" "keypair" {
  name       = "my-keypair1"
}

resource "local_file" "private-key" {
    content = resource.openstack_compute_keypair_v2.keypair.private_key
    filename = "${path.module}/my-keypair1.pem"

}
resource "openstack_compute_secgroup_v2" "securityGroup" {
  name        = "secgroup"  
  description = "mySecurity"
  rule {
	from_port   = 22
    to_port     = 22
    ip_protocol = "tcp"
    cidr        = "158.193.152.0/16"
  }
}

resource "openstack_compute_instance_v2" "myVM" {
  name            = "vm"
  image_id        = var.image
  flavor_name     = var.flavor
  security_groups = [openstack_compute_secgroup_v2.securityGroup.name]
  key_pair = "my-keypair1"
  network {
    name = var.ext_network
  }
  user_data = file("skript/script.sh")
}