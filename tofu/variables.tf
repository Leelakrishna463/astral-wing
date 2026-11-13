variable "node" {
  type = string
}

variable "gateway" {
  type = string
}

variable "image" {
  type    = string
  default = "local:import/ubuntu-26.04-server-cloudimg-amd64.qcow2"
}

variable "ssh_public_key_file" {
  type    = string
  default = "/root/.ssh/ansible.pub"
}

variable "vms" {
  type = map(object({
    vm_id   = number
    ip      = string
    cores   = number
    memory  = number
    disk_gb = number
    on_boot = bool
    mac     = optional(string)
  }))
}

variable "admin_ssh_keys" {
  type    = list(string)
  default = []
}
