# == Class: mit_krb5::install
#
# Install MIT Kerberos v5 client.
#
# === Authors
#
# Patrick Mooney <patrick.f.mooney@gmail.com>
#
# === Copyright
#
# Copyright 2013 Patrick Mooney.
#
class mit_krb5::install(
  Array[String] $packages   = [],
) {

if length($packages) > 0 {
    $install = [$packages]
  } else {
    # OS-specific defaults
    $install = $::osfamily ? {
      'Archlinux' => ['krb5'],
      'Debian'    => ['krb5-user'],
      'Gentoo'    => ['mit-krb5'],
      'Mandrake'  => ['krb5-workstation'],
      'RedHat'    => ['krb5-workstation'],
      'Suse'      => ['krb5-client'],
    }
  }
  ensure_packages($install)
}
