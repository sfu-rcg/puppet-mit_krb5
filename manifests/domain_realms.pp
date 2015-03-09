
class mit_krb5::domain_realms(
  $domains = {},
  $defaults = hiera(mit_krb5::domain_realms),
  ) {
  create_resources(domain_realm, $domains, $defaults)
}
