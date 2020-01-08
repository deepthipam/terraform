resource "azuread_user" "example" {
  display_name          = "J Doe"
  password              = "notSecure123"
  user_principal_name   = "j.doe@terraform.onmicrosoft.com"
}

resource "azuread_group" "example" {
  name    = "MyGroup"
  members = [ "${azuread_user.example.object_id}" /*, more users */ ]
}
