resource "openstack_compute_instance_v2" "muscle" {
    name      = "muscle"
    region    = "RegionOne"
    flavor_id = "df2ca4c3-715a-4749-b955-1c73a9aca1a6"
    key_pair  = "dream"
    network {
        uuid = "e3102f8e-6d1c-41b3-b4ef-3ca5d81b79da"
        name = "dmslab-vpn"
    }
    security_groups = ["Default"]
    image_id = "45adb171-6051-43db-af19-ec62c00a1bf2"
}