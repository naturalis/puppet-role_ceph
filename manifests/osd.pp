class role_ceph::osd (
	$fsid,
	$monitorkey,
	$adminkey,
	){

	#class {"ceph::package":}
	class {"ceph::osd":
		monitorkey	=> $monitorkey,
		adminkey	=> $adminkey,
		fsid		=> $fsid,
		datacenter	=> 'datacenter',
		room 		=> 'room',
		row			=> 'row',
		rack		=> 'rack',
		disks 		=> 'disks',
	}

}
