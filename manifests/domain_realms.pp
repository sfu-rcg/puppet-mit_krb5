# Wrapper class to expose this module to the Foreman.
# Use mit_krb5::domain_realm instead if you can.

class mit_krb5::domain_realms(
  Hash $domains   = {},
  Hash $defaults  = {},
  ) {
  create_resources(mit_krb5::domain_realm, $domains, $defaults)
}
