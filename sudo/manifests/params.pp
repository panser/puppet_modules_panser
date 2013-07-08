class sudo::params {
  $source_base = "puppet:///modules/${module_name}"

  case $::osfamily {
    default: {
          $package = 'sudo'
          $config_file = '/etc/sudoers'
          $config_dir = '/etc/sudoers.d/'
          $source = "${source_base}/etc/sudoers"
          $config_file_group = 'root'
    }
    freebsd: {
      $package = 'security/sudo'
      $config_file = '/usr/local/etc/sudoers'
      $config_dir = '/usr/local/etc/sudoers.d/'
      $source = "${source_base}/etc/sudoers.freebsd"
      $config_file_group = 'wheel'
    }
  }
}
