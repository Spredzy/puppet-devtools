# Class: devtools::params
#
class devtools::params () {

  case $::osfamily {
    'RedHat': {
      $packages = ['gettext', 'make', 'gcc', 'gcc-c++', 'openssl-devel', 'libicu-devel', 'libyaml-devel', 'zlib-devel', 'readline-devel', 'autoconf', 'perl-ExtUtils-MakeMaker', 'xinetd']
    }
    'Debian': {
      $packages = ['gettext', 'make', 'gcc', 'g++', 'libssl-dev', 'curl', 'libicu-dev', 'libyaml-dev', 'zlib1g-dev', 'libreadline-dev', 'autoconf', 'libmodule-build-perl', 'libmodule-install-perl', 'xinetd']
    }
    default: {
      fail("Unsupported OS : $::osfamily - Get in touch with the Module maintainer to see how we can fix that")
    }
  }
}
