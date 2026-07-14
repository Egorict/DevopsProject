terraform {
  required_version = ">= 1.0"
  required_providers {
    regru = {
      source  = "sport24ru/regru"
      version = "~> 1.0"
    }
  }
}

provider "regru" {
  username = var.username
  password = var.password
}

resource "regru_dns_a_record" "my_site" {
  zone    = "apollonovaalisaviachislavovna.ru"
  name    = "www"
  records = ["194.226.163.161"]
}

resource "regru_dns_a_record" "main_domain" {
  zone    = "apollonovaalisaviachislavovna.ru"
  name    = "@"
  records = ["194.226.163.161"]
}