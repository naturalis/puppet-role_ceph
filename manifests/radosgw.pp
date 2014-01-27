class role_ceph::radosgw (){
  
  class {"ceph::package::radosgw":}
  class {"ceph::package::client":}

}
