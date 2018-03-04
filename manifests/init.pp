# Class: ntp
# ===========================
#
# Full description of class ntp here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'ntp':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
class ntp (
  String $package_name		= $ntp::params::package_name,
  String $package_ensure	= $ntp::params::package_ensure,
  String $config_name		= $ntp::params::config_name,
  String $config_file_mode	= $ntp::params::config_file_mode,
  Array[String] $servers	= $ntp::params::servers,
  String $service_ensure	= $ntp::params::service_ensure,
  String $service_name		= $ntp::params::service_name,
  Boolean $service_enable	= $ntp::params::service_enable,
  Boolean $service_harestart	= $ntp::params::service_harestart,
  Boolean $service_hastatus	= $ntp::params::service_hastatus,
) inherits ::ntp::params {
  class { '::ntp::install': }
	-> class { '::ntp::config': }
	~> class { '::ntp::service': }
 }
  
