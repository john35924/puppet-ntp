class ntp::service(
  String $service_name		= $ntp::service_name,
  String $service_ensure	= $ntp::service_ensure,
  Boolean $service_enable	= $ntp::serivce_enable,
  Boolean $service_hastatus	= $ntp::service_hastatus,
  Boolean $servie_harestart	= $ntp::service_harestart,
) {
  serivce { 'ntp':
	ensure		=> $service_ensure,
	enable		=> $service_enable,
	name		=> $service_name,
	hastatus	=> $service_hastatus,
	harestart	=> $service_harestart,
  }
}
