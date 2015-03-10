
class mit_krb5::domain_realms(
  $domains = {},
  $defaults = {},
  ) {
  create_resources(domain_realm, $domains, $defaults)
}
