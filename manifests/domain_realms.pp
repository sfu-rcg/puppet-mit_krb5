
class mit_krb5::domain_realms(
  $domains = {},
  $defaults = {},
  ) {
  create_resources(mit_krb5::domain_realm, $domains, $defaults)
}
