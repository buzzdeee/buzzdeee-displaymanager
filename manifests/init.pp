# == Class: displaymanager
#
# Full description of class displaymanager here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'displaymanager':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Sebastian Reitenbach <sebastia@l00-bugdead-prods.de>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class displaymanager (
  $sysconfig_file             = $::displaymanager::params::sysconfig_file,
  $xserver                    = $::displaymanager::params::xserver,
  $displaymanager             = $::displaymanager::params::displaymanager,
  $remote_access              = $::displaymanager::params::remote_access,
  $root_login_remote          = $::displaymanager::params::root_login_remote,
  $starts_xserver             = $::displaymanager::params::starts_xserver,
  $xserver_tcp_port_6000_open = $::displaymanager::params::xserver_tcp_port_6000_open,
  $autologin                  = $::displaymanager::params::autologin,
  $password_less_login        = $::displaymanager::params::password_less_login,
  $ad_integration             = $::displaymanager::params::ad_integration,
  $shutdown                   = $::displaymanager::params::shutdown,
  $kdm_localargs              = $::displaymanager::params::kdm_localargs,
  $root_login_local           = $::displaymanager::params::root_login_local,
) inherits displaymanager::params {

  class { 'displaymanager::config':
    sysconfig_file             => $sysconfig_file,
    xserver                    => $xserver,
    displaymanager             => $displaymanager,
    remote_access              => $remote_access,
    root_login_remote          => $root_login_remote,
    starts_xserver             => $starts_xserver,
    xserver_tcp_port_6000_open => $xserver_tcp_port_6000_open,
    autologin                  => $autologin,
    password_less_login        => $password_less_login,
    ad_integration             => $ad_integration,
    shutdown                   => $shutdown,
    kdm_localargs              => $kdm_localargs,
    root_login_local           => $root_login_local,
  }
}
