terraform {
    required_version = ">= 1.0.0"
        required_providers {
            openstack = {
                source  = "terraform-provider-openstack/openstack"
                version = "~> 1.42.0"
                }
        }
}

    # Configure the OpenStack Provider
    provider "openstack" {
        user_name   = "${var.USER_NAME}"
        tenant_name   = "${var.TENANT_NAME}"
        password    = "${var.USER_PW}"
        auth_url    = "${var.CTRL_URL}:5000/v3/"
        region      = "RegionOne"
        user_domain_name = "Default"
        endpoint_type = "public"
        endpoint_overrides = {
        "identity" = "${var.CTRL_URL}:5000/v3/"
        "network"  = "${var.CTRL_URL}:9696/"
        "compute"  = "${var.CTRL_URL}:8774/v2.1/"
        "image"    = "${var.CTRL_URL}:9292/"
        "placement" = "${var.CTRL_URL}:8778/"
    }
}