
resource "openstack_networking_floatingip_v2" "fip_1" {
  pool = "ext-net"
}

resource "openstack_compute_floatingip_associate_v2" "fip_1" {
  floating_ip = "${openstack_networking_floatingip_v2.fip_1.address}"
  instance_id = "${openstack_compute_instance_v2.server_Adams.id}"
}