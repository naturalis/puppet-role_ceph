class role_ceph::client (
	$fsid,
	){

	class {"ceph::clientpackage":}
	Ini_setting <<| tag == "cephconf-${fsid}" |>>

}
