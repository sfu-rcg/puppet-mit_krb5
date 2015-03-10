
class mit_krb5::appdefaultss(
  $apps = {},
  $defaults = {},
  ) {
  create_resources(appdefault, $apps, $defaults)
}
