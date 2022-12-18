locals {
  kis_os_region   = "RegionOne"
  kis_os_auth_url = "http://158.193.138.33:5000/v3"
  kis_os_endpoint_overrides = {
    "network" = "http://158.193.138.33:9696/v2.0/"
    "compute" = "http://158.193.138.33:8774/v2.1/bfb3137d841f4f7ea2a88289a985a3be/"

  }
}

