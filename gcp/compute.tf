resource "google_compute_project_default_network_tier" "default" {
  network_tier = "PREMIUM"
}

resource "google_compute_project_metadata" "default" {
  metadata = {
    "ssh_eevee" = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKnAmz4u5/51kPPsebDCiYTXvuftUORh/TJ4pvN3NvQa arccy@eevee"
    "ssh_ecdsa_sk" = "sk-ecdsa-sha2-nistp256@openssh.com AAAAInNrLWVjZHNhLXNoYTItbmlzdHAyNTZAb3BlbnNzaC5jb20AAAAIbmlzdHAyNTYAAABBBEA6m6AfE8yj2RhMqHY2cUnZw7OEKPv6Qz/yJEwm8H32/BC+C8q+rqhbrrKO5OJyGeu1H7BvQGwrywuCjiLUICAAAAAEc3NoOg== seankhliao@gmail.com"
    "ssh_ed25519_sk" = "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIJdlRGpDyKRbdOeIkJ78xzivQfHS/8Z2eVEd5rXZ8B6NAAAABHNzaDo= seankhliao@gmail.com"
  }
}
