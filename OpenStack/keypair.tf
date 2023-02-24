resource "openstack_compute_keypair_v2" "pubkey" {
  name       = "pubkey"
  public_key = file("pubkey.pub")

}