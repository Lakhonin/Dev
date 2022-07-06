terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.76.0"
    }
  }
}

provider "yandex" {
  cloud_id  = "b1gavf75ukmkdkq5pc67"
  folder_id  = "b1gtrnt5bah9u3n16tt8"
}

resource "yandex_compute_disk" "k8s-hdd-ru-central1-a" {
  name = "k8s-hdd-ru-central1-a"
  type = "network-hdd"
  zone = "ru-central1-a"
  size = "50"
}
