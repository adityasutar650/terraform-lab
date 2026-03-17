terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

provider "local" {}

variable "filename" {
  description = "Name of the file to create"
  type        = string
}

variable "message" {
  description = "Content of the file"
  type        = string
}

resource "local_file" "example" {
  filename = var.filename
  content  = var.message
}
