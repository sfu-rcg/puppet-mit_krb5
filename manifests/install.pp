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
    notify{'debug: NOT using default krb5 client packages': }
    $install = [$packages]
  } else {
    notify{'debug: Using default krb5 client packages': }
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
