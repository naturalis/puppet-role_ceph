class role_ceph::client (
	$fsid,
	){

	class {"ceph::package::client":}
	Ini_setting <<| tag == "cephconf-${fsid}" |>> {
		require => Class["ceph::clientpackage"],
	}

}
