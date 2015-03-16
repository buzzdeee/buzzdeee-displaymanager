# private class, do not use directly
# this class takes care about the configuration file

class displaymanager::config (
  $sysconfig_file,
  $xserver,
  $displaymanager,
  $remote_access,
  $root_login_remote,
  $starts_xserver,
  $xserver_tcp_port_6000_open,
  $autologin,
  $password_less_login,
  $ad_integration,
  $shutdown,
  $kdm_localargs,
  $root_login_local,
) {

  ini_setting { 'displaymanager_xserver':
    path              => $sysconfig_file,
    section           => '',
    key_val_separator => '=',
    setting           => 'DISPLAYMANAGER_XSERVER',
    value             => "\"$xserver\"",
  }
  ini_setting { 'displaymanager_displaymanager':
    path              => $sysconfig_file,
    section           => '',
    key_val_separator => '=',
    setting           => 'DISPLAYMANAGER',
    value             => "\"$displaymanager\"",
  }
  ini_setting { 'displaymanager_remote_access':
    path              => $sysconfig_file,
    section           => '',
    key_val_separator => '=',
    setting           => 'DISPLAYMANAGER_REMOTE_ACCESS',
    value             => "\"$remote_access\"",
  }
  ini_setting { 'displaymanager_root_login_remote':
    path              => $sysconfig_file,
    section           => '',
    key_val_separator => '=',
    setting           => 'DISPLAYMANAGER_ROOT_LOGIN_REMOTE',
    value             => "\"$root_login_remote\"",
  }
  ini_setting { 'displaymanager_starts_xserver':
    path              => $sysconfig_file,
    section           => '',
    key_val_separator => '=',
    setting           => 'DISPLAYMANAGER_STARTS_XSERVER',
    value             => "\"$starts_xserver\"",
  }
  ini_setting { 'displaymanager_xserver_tcp_port_6000_open':
    path              => $sysconfig_file,
    section           => '',
    key_val_separator => '=',
    setting           => 'DISPLAYMANAGER_XSERVER_TCP_PORT_6000_OPEN',
    value             => "\"$xserver_tcp_port_6000_open\"",
  }
  ini_setting { 'displaymanager_autologin':
    path              => $sysconfig_file,
    section           => '',
    key_val_separator => '=',
    setting           => 'DISPLAYMANAGER_AUTOLOGIN',
    value             => "\"$autologin\"",
  }
  ini_setting { 'displaymanager_password_less_login':
    path              => $sysconfig_file,
    section           => '',
    key_val_separator => '=',
    setting           => 'DISPLAYMANAGER_PASSWORD_LESS_LOGIN',
    value             => "\"$password_less_login\"",
  }
  ini_setting { 'displaymanager_ad_integration':
    path              => $sysconfig_file,
    section           => '',
    key_val_separator => '=',
    setting           => 'DISPLAYMANAGER_AD_INTEGRATION',
    value             => "\"$ad_integration\"",
  }
  ini_setting { 'displaymanager_shutdown':
    path              => $sysconfig_file,
    section           => '',
    key_val_separator => '=',
    setting           => 'DISPLAYMANAGER_SHUTDOWN',
    value             => "\"$shutdown\"",
  }
  ini_setting { 'displaymanager_kdm_localargs':
    path              => $sysconfig_file,
    section           => '',
    key_val_separator => '=',
    setting           => 'DISPLAYMANAGER_KDM_LOCALARGS',
    value             => "\"$kdm_localargs\"",
  }
  ini_setting { 'displaymanager_root_login_local':
    path              => $sysconfig_file,
    section           => '',
    key_val_separator => '=',
    setting           => 'DISPLAYMANAGER_ROOT_LOGIN_LOCAL',
    value             => "\"$root_login_local\"",
  }
}
