# @summary Install mydashboard tool
#
# @example
#   include mydashboard::install
class mydashboard::install(
  $bindir = $::mydashboard::bindir,
  $fakeroot = $::mydashboard::fakeroot,
) {

  if ( ! $fakeroot ) {
    package {'mydashboard':
      ensure => present,
    }
  }

}
