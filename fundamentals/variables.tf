variable "filename1" {
    default = "mynewtext1.txt"
}

variable "content1" {
    default = "wejafkhdsf"
}

variable "filename2" {
    default = ".\\mynewtext2.txt"
}

variable "content2" {
    default = "My favorite pet name is"
}

variable "prefix" {
    default = "Mr"
}

variable "separator" {
    default = "."
}

variable "length" {
    default = "1"
}

variable "listfiles" {
    default = [".\\listfile1.txt",".\\listfile2.txt",".\\listfile3.txt",".\\listfile4.txt",".\\listfile5.txt",".\\listfile6.txt"]
}


variable "fileset" {
    type = set(string)
    default = [".\\setfile1.txt",".\\setfile2.txt",".\\setfile3.txt",".\\setfile4.txt",".\\setfile5.txt",".\\setfile6.txt"]
}