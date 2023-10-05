resource "local_file" "simple_text" {
  filename = var.filename1
  content  = data.local_file.mycontent.content

  depends_on = [
    local_file.second_text
  ]
}

resource "local_file" "second_text" {
  filename = "file2.txt"
  content  = "content changes 123123123 "
  #lifecycle {
  #  ignore_changes = [
  #    content
  #  ]
  #  prevent_destroy = true
  #}

}

data "local_file" "mycontent"{
  filename = ".\\my-reference.txt"
}