resource "openstack_networking_network_v2" "Adams_network_1" {
  name           = "Adams_network_1"
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "Adams_subnet_1" {
  name       = "Adams_subnet_1"
  network_id = "${openstack_networking_network_v2.Adams_network_1.id}"
  cidr       = "192.168.5.0/24"
  ip_version = 4
}

