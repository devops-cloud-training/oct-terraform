resource "random_pet" "my-pet-name1" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}

resource "random_id" "rand_id" {
    byte_length = 5
}
