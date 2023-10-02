terraform {
    required_providers {
        local = {
            source = "hashicorp/local"
            version = "2.3.0"
        }
        random = {
            source = "hashicorp/random"
            version = "3.4.3"
        }
    }
}