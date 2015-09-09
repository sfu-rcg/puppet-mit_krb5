
class mit_krb5::realms(
  $realms = {},
  $defaults = {},
  ) {
  create_resources(mit_krb5::realm, $realms, $defaults)
}
