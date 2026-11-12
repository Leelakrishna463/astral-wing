resource "proxmox_virtual_environment_vm" "vm" {
  for_each        = var.vms
  name            = each.key
  node_name       = var.node
  vm_id           = each.value.vm_id
  pool_id         = "iac"
  on_boot         = each.value.on_boot
  started         = true
  stop_on_destroy = true
  scsi_hardware   = "virtio-scsi-single"

  agent {
    enabled = true
    wait_for_ip {
      disabled = true
    }
  }

  cpu {
    cores = each.value.cores
    type  = "host"
  }

  memory {
    dedicated = each.value.memory
  }

  disk {
    datastore_id = "local-lvm"
    interface    = "scsi0"
    import_from  = var.image
    size         = each.value.disk_gb
    discard      = "on"
    ssd          = true
    iothread     = true
  }

  network_device {
    bridge = "vmbr0"
  }

  serial_device {}

  vga {
    type = "serial0"
  }

  operating_system {
    type = "l26"
  }

  initialization {
    datastore_id = "local-lvm"
    ip_config {
      ipv4 {
        address = "${each.value.ip}/24"
        gateway = var.gateway
      }
    }
    dns {
      servers = [var.gateway]
    }
    user_account {
      username = "lee"
      keys     = [trimspace(file(var.ssh_public_key_file))]
    }
  }
}
