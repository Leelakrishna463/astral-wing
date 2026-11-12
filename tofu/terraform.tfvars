node    = "pve"
gateway = "192.168.0.1"

vms = {
  "iac-test" = {
    vm_id   = 9100
    ip      = "192.168.0.150"
    cores   = 2
    memory  = 2048
    disk_gb = 20
    on_boot = false
  }
}
