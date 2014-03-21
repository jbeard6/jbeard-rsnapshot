class rsnapshot::params {
    $package_name       = 'rsnapshot'
    $conf_dir           = '/etc/rsnapshot'
    $snapshot_dir       = '/srv/backup/snapshots'
    $log_dir            = '/var/log/rsnapshot'
    $pid_dir            = '/var/run'

    $config_version     = '1.2'
    $create_root        = undef
    $cp_cmd             = $osfamily ? {
        Linux   => '/bin/cp',
        default => undef,
    }
    $rm_cmd             = '/bin/rm'
    $rsync_cmd          = '/usr/bin/rsync'
    $ssh_cmd            = '/usr/bin/ssh'
    $logger_cmd         = '/usr/bin/logger'
    $du_cmd             = '/usr/bin/du'
    $rsnapshot_diff_cmd = undef
    $preexec_cmd        = undef
    $postexec_cmd       = undef
    $interval_hourly    = 6
    $interval_daily     = 7
    $interval_weekly    = 4
    $interval_monthly   = undef
    $verbosity          = 2
    $log_level          = 3

}
