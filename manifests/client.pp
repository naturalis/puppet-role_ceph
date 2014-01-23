class role_ceph::client (
	$fsid,
	){

	class {"ceph::cleintpackage":}
	Ini_setting <<| tag == "cephconf-${fsid}" |>>

}
