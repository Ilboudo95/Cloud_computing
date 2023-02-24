resource "openstack_networking_secgroup_v2" "Adams_parfeu_web" {
  name        = "Adams_parfeu_web"
  description = "My neutron security cgroup"
}