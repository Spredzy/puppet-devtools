# Class: devtools
#
# A Puppet module that ensure specific packages are installed for devlopment tasks
#
# Requires:
#
# Actions:
#
#   Install all the packages listed in devtools::params::packages
#
# Example:
#
#   include devtools
#
class devtools() {

  include devtools::params

  if $::osfamily == 'RedHat' {
    require epel
  }

  package {$devtools::params::packages:
    ensure => latest,
  }

}
