# == Define: mit_krb5::appdefault
#
# Configure appdefaults section of krb5.conf
#
# === Authors
#
# Patrick Mooney <patrick.f.mooney@gmail.com>
#
# === Copyright
#
# Copyright 2013 Patrick Mooney.
#

/* learning about concat module and Puppet 3 at the same time
   so you almost certainly should not use this */

define mit_krb5::appdefault(
  $app            = $title,
  $content        = {} ,
  ) {

  include mit_krb5

  validate_hash($content)
  $_settings = $content

  ensure_resource('concat::fragment', 'mit_krb5::appdefault_header', {
    target  => $mit_krb5::krb5_conf_path,
    order   => '30appdefault_header',
    content => "[appdefaults]\n",
  })
    concat::fragment { "mit_krb5::appdefault::${app}":
      target  => $mit_krb5::krb5_conf_path,
      order   => "31appdefault_${app}",
      content => template('mit_krb5/appdefault.erb'),
    }
  }
