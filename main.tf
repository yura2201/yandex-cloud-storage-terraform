// Configure the Yandex.Cloud provider
provider "yandex" {
  token = var.token
  #  service_account_key_file = "path_to_service_account_key_file"
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.yc_zone
}

resource "yandex_storage_object" "test-object" {
  access_key = var.access_key
  secret_key = var.secret_key
  bucket     = var.bucket
  key        = "test_object_name"
  source     = "~/Documents/kate_manual.pdf"
}