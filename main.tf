terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0"
    }
  }
}

provider "azuread" {}

# Read CSV file
locals {
  users = csvdecode(file("${path.module}/users.csv"))
}

# Convert list to map
locals {
  users_map = {
    for user in local.users :
    user.name => user
  }
}

# Create users
resource "azuread_user" "users" {
  for_each = local.users_map

  user_principal_name = "${each.value.name}@nigarparweengmail.onmicrosoft.com"
  display_name        = title(each.value.name)
  mail_nickname       = each.value.name

  password = "P@ssw0rd123!"
}