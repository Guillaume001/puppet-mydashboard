# @summary Manage mydashboard tool
#
# Install and configure mydashboard tool.
#
# @example
#   include mydashboard
class mydashboard (
  $bindir            = '/usr/bin',
  $confdir           = '/etc/mydashboard',
  $fakeroot          = false,

  $owner             = 'root',
  $group             = 'root',

  $gui               = 'False',
  $menu              = [],
  $menuconf          = "${confdir}/menu.conf",
  $webbrowser        = '/usr/bin/firefox',
  $remotelist        = "${confdir}/remote.json",
  $documentroot      = "${confdir}/docroot",
  $debug_filename    = '~/mydashboard.log',
  $remote_connection = '/usr/bin/echo',

  $css_custom_groups = [],
){

    include ::mydashboard::install
    include ::mydashboard::config
    include ::mydashboard::menu

    Class['::mydashboard::install']
    -> Class['::mydashboard::config']
    -> Class['::mydashboard::menu']

}
