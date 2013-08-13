node default {
#hosts
include hosts

#sudo
include sudo
       sudo::conf { 'smart':
         source => 'puppet:///modules/sudo/etc/sudoers.d/smart',
       }
       sudo::conf { 'zabbix':
         source => 'puppet:///modules/sudo/etc/sudoers.d/zabbix',
       }

#torrancew-account
    account {
      'smart':
        ensure => 'present',
        #ensure => 'absent',
        #password => '$MD5_PASSWORD',
        shell => '/bin/bash',
        home_dir => '/home/smart',
        groups   => [],
        ssh_key  => '$KEY',
        ssh_key_type => 'ssh-rsa',
        comment => 'Puppet managed user',
    }
}

