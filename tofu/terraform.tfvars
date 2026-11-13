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
  "wing-udock" = {
    vm_id   = 110
    ip      = "192.168.0.103"
    cores   = 5
    memory  = 12288
    disk_gb = 125
    on_boot = true
    mac     = "BC:24:11:53:47:FE"
  }
}

admin_ssh_keys = [
  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC7uN6fG5Hvy2bsCb437OpSrOE2poPXhqJpLvLyzXtfYDlbiPSW/Hm662jNHSKp8mgv9cQhB5CbvZkfxiCxE4Z4wrC/NgNQn7/4IPO5y/wqWxckX4xvIlixxu2Yl2HzynwpHIBgFGv+64/Py2CsK9u/G/wgU3nxJ9/+rO8Hqd4F6GpAbf2fFMkqRoy9aeOE9rlL0496VMmRcNjN9X4bau929FreTkIPH/8FwWEeiLl7YV9cZSHnOtSqlkFSF270y4hy2lb+xn8WCwsxeX+4dX77cPD0JF4lSQWHNn5t2/RVKodHbTqlCM3NkE9y/2OzXkAH3SALhqPVpj5bzNahlP9jSblxeX8346dECejZg493qa+i3lJ7ciuFnyqC1uQJeK/jh056KtosuoHcedHVwIWyv0qyavoEHMSoyku7S7cBPQVemj2we6ZymnRfOH3cpDAGoczDyVVcQIi8C0oIv/mDN6D6yyHL/r7FbVBNyDNRGrQpRwnZkRb+LAJMBqGOlqE=",
]
