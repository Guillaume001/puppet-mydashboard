# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include mydashboard::menu
class mydashboard::menu (
  $menu    = $::mydashboard::menu,
  $owner   = $::mydashboard::owner,
  $group   = $::mydashboard::group,
  $confdir = $::mydashboard::confdir,
){

    file {"${confdir}/menu.json":
        ensure  => file,
        owner   => $owner,
        group   => $group,
        mode    => '0644',
        content => template('mydashboard/menu.json.erb')
    }

}
