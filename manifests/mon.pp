class role_ceph::mon (
	$fsid,
	$monitorkey,
	$adminkey,
	){

	class {"ceph::package":}
	class {"ceph::mon":
		fsid 	   => $fsid,
		monitorkey => $monitorkey,
		adminkey   => $adminkey,
		require    => Class['ceph::package']
	}

}
