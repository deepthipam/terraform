data "azuread_users" "users" {
  user_principal_names = ["kat172020@hashicorp.com", "byte1072020@hashicorp.com"]
}