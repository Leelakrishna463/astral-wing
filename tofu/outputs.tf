output "inventory" {
  value = yamlencode({
    docker_hosts = {
      hosts = { for k, v in var.vms : k => { ansible_host = v.ip, vmid = v.vm_id } }
    }
  })
}
