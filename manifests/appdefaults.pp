
class mit_krb5::appdefaults(
  $apps = {},
  $defaults = {},
  ) {
  create_resources(mit_krb5::appdefault, $apps, $defaults)
}
