# Wrapper class to expose this module to the Foreman.
# Use mit_krb5::realm instead if you can.

class mit_krb5::realms(
  Hash $realms      = {},
  Hash $defaults    = {},
  ) {
  create_resources(mit_krb5::realm, $realms, $defaults)
}
