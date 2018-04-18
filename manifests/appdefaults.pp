# Wrapper class to expose this module to the Foreman.
# Use mit_krb5::appdefault instead if you can.

class mit_krb5::appdefaults(
  Hash $apps = {},
  Hash $defaults = {},
  ) {
  create_resources(mit_krb5::appdefault, $apps, $defaults)
}
