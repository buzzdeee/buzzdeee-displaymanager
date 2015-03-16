# private class, do not use directly
# the parameters that drive this module
class displaymanager::params {
  case $::osfamily {
    'Suse': {
      $sysconfig_file             = '/etc/sysconfig/displaymanager'
      $xserver                    = 'Xorg'
      $displaymanager             = 'kdm'
      $remote_access              = 'no'
      $root_login_remote          = 'no'
      $starts_xserver             = 'yes'
      $xserver_tcp_port_6000_open = 'no'
      $autologin                  = ''
      $password_less_login        = 'no'
      $ad_integration             = 'no'
      $shutdown                   = 'auto'
      $kdm_localargs              = ''
      $root_login_local           = 'yes'
    }
    default: {
      fail("Unsupported platform: buzzdeee-${module_name} currently doesn't support ${::osfamily}")
    }
  }
}
