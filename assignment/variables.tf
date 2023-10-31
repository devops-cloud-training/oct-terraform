variable "aws_region" {
  default     = "ap-south-1"
  description = "Default region targeted to Asia-pacific Mumbai"
  type        = string
}

variable "ami_name" {
  default     = "ami-0d13e3e640877b0b9"
  description = "In Ap-south-1 Amazon Linux 2023"
  type        = string
}

variable "instance_type" {
  default     = "t2.micro"
  description = "1cpu and 1gb ram configuation"
  type        = string
}

variable "instance_count" {
  default     = 1
  description = "The number of servers to be created"
  type        = number
}