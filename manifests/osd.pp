class role_ceph::osd (
  $fsid,
  $monitorkey,
  $adminkey,
  $datacenter,
  $rack,
  $disks,
  ){
  class {"ceph::package":}
  class {"ceph::osd":
    monitorkey  => $monitorkey,
    adminkey    => $adminkey,
    fsid        => $fsid,
    datacenter	=> $datacenter,
    rack		    => $rack,
    disks 		  => $disks,
    require     => Class['ceph::package'],
  }
}
