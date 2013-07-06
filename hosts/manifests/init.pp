class hosts {
        # localhost
        host { 'localhost':
            ensure => 'present',
            target => '/etc/hosts',
            ip => '127.0.0.1',
        }
 
        # puppet.local
        host { 'puppet.local':
            ensure => 'present',
            target => '/etc/hosts',
            ip => '144.76.73.20',
            host_aliases => 'puppet',
        }
 
        # mdev.loc
        host { 'mdev.local':
            ensure => 'present',
            target => '/etc/hosts',
            ip => '78.159.121.99',
            host_aliases => ['mdev', 'mdev.loc', 'www.mdev.loc'],
        }
 
        # mysql.local
        host { 'mysql.local':
            ensure => 'present',
            target => '/etc/hosts',
            ip => '127.0.0.1',
            host_aliases => ['mysql', 'mysql.cl.thd.cc'],
        }
}
