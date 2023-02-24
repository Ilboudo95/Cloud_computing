resource "openstack_compute_instance_v2" "server_Adams" {
  name            = "server_Adams"
  image_id        = "fe581441-e962-49c0-9752-57a722d904f7"
  flavor_id       = "e77ea7b7-a213-41e3-922e-e24ce6fd24f7" 
  key_pair        = "pubkey" 
  security_groups = ["Adams_parfeu_web"]


  network {
    name = "${openstack_networking_network_v2.Adams_network_1.name}"
  }
}



