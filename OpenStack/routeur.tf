resource "openstack_networking_router_v2" "Adams_router" {
  name                = "Adams_router"
  admin_state_up      = true
  external_network_id = "db17fd87-65cc-44a5-98c9-84e29efe4576"
}

resource "openstack_networking_router_interface_v2" "router_interface_1" {
  router_id = "${openstack_networking_router_v2.Adams_router.id}"
  subnet_id = "${openstack_networking_subnet_v2.Adams_subnet_1.id}"
}