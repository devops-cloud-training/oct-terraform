resource "local_file" "simple_text" {
  filename = var.filename1
  content  = var.content1
}

resource "local_file" "second_text" {
  filename = "${random_id.rand_id.hex}.txt"
  content  = "${var.content2} - ${random_pet.my-pet-name1.id}"

  lifecycle {
    create_before_destroy = true
  }
}

