# Создание ВМ для K8S

data "yandex_compute_image" "ubuntu_image" {
  family = "ubuntu-2204-lts"
}

# Создание ВМ MASTER
resource "yandex_compute_instance" "master" {
  name                      = "master"
  zone                      = "ru-central1-b"
  allow_stopping_for_update = true

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = "fd864gbboths76r8gm5f"
      type        = "network-nvme"
      size        = "20"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }
  metadata = {
    user-data = file("./metadata.yml")
 }
   scheduling_policy {
     preemptible = true
  }
}

# Создание ВМ WORKER-1
resource "yandex_compute_instance" "worker-1" {
  name                      = "worker-1"
  zone                      = "ru-central1-b"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = "fd864gbboths76r8gm5f"
      type        = "network-nvme"
      size        = "20"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }
  metadata = {
    user-data = file("./metadata.yml")
 }
   scheduling_policy {
    preemptible = true
  }
}

# Создание ВМ WORKER-2
resource "yandex_compute_instance" "worker-2" {
  name                      = "worker-2"
  zone                      = "ru-central1-b"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = "fd864gbboths76r8gm5f"
      type        = "network-nvme"
      size        = "20"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }
  metadata = {
    user-data = file("./metadata.yml")
 }
   scheduling_policy {
    preemptible = true
  }
}
