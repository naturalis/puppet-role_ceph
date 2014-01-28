class role_ceph::radosgw (){
  
  
  class {"ceph::package::client":}
  class {"ceph::package::radosgw":
    require => Class["ceph::package::client"],
  }
  class {"ceph::radosgw":
    require => Class["ceph::package::radosgw"],
  }

}
