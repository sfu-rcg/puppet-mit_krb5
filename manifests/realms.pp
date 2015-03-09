
class mit_krb5::realms(
  $realms = {},
  $defaults = hiera(mit_krb5::realms),
  ) {
  create_resources(realm, $realms, $defaults)
}
