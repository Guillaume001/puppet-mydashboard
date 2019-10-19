# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include mydashboard::config
class mydashboard::config (
  $gui               = $::mydashboard::gui,
  $owner             = $::mydashboard::owner,
  $group             = $::mydashboard::group,
  $confdir           = $::mydashboard::confdir,
  $menuconf          = $::mydashboard::menuconf,
  $webbrowser        = $::mydashboard::webbrowser,
  $remotelist        = $::mydashboard::remotelist,
  $documentroot      = $::mydashboard::documentroot,
  $debug_filename    = $::mydashboard::debug_filename,
  $remote_connection = $::mydashboard::remote_connection,
){

    file {$confdir:
        ensure => directory,
        owner  => $owner,
        group  => $group,
        mode   => '0755',
    }

    file {"${confdir}/mydashboard.conf":
        ensure  => file,
        owner   => $owner,
        group   => $group,
        mode    => '0644',
        content => template('mydashboard/mydashboard.conf.erb')
    }


}
