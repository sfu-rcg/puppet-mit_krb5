
class mit_krb5::realms(
  $realms = {},
  $defaults = {},
  ) {
  create_resources(realm, $realms, $defaults)
}
