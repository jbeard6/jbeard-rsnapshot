class rsnapshot::config (
    $ensure,
    $conf_dir     = $rsnapshot::params::conf_dir,
    $log_dir      = $rsnapshot::params::log_dir,
    $snapshot_dir = $rsnapshot::params::snapshot_dir,
) inherits rsnapshot::params {

    file { $conf_dir:
        ensure => $ensure ? {
            absent  => absent,
            default => directory,
        },
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
    }

    file { $snapshot_dir:
        ensure => $ensure ? {
            absent  => absent,
            default => directory,
        },
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
    }

    file { $log_dir:
        ensure => $ensure ? {
            absent  => absent,
            default => directory,
        },
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
    }

}
