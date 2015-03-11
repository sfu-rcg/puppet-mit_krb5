
class mit_krb5::appdefaults(
  $apps = {},
  $defaults = {},
  ) {
  create_resources(appdefault, $apps, $defaults)
}
