class role_ceph::radosgw (
  $fsid,
){
  
  
  class {"ceph::package::client":}
  class {"ceph::package::radosgw":
    require => Class["ceph::package::client"],
  }
  class {"ceph::radosgw":
    fsid	=> $fsid,
    require => Class["ceph::package::radosgw"],
  }

}
