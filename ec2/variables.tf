# Terraform - prompted variables

# Terraform - variables via CLI
# -var="variablename=value"
# Eg: terraform plan -var="ami_id=ami-041feb57c611358bd"

# Terraform - via env variables
# TF_VAR_ami_id=ami-041feb57c611358bd
# $ unset TF_VAR_ami_id

# Terraform - tfvars


# "ami-041feb57c611358bd"

variable "ami_id" {
    description = "AMI ID from US-East-1 region"
    type = string
    default = "ami-041feb57c611358bd"
}