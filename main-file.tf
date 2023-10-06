resource "local_file" "simple_text" {
  filename = local.filenames
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

resource "local_file" "list_of_files" {
  count = length(var.listfiles)
  filename = var.listfiles[count.index]
  content = "simple"
}

resource "local_file" "set_of_files" {
  filename = each.value
  for_each = var.fileset
  content = "simple"
}