define rsnapshot::conf (
    $ensure,
    $snapshot_dir       = "${rsnapshot::params::snapshot_root}/${title}",
    $preexec_cmd        = $rsnapshot::params::preexec_cmd,
    $postexec_cmd       = $rsnapshot::params::postexec_cmd,
    $interval_hourly    = $rsnapshot::params::interval_hourly,
    $interval_daily     = $rsnapshot::params::interval_daily,
    $interval_weekly    = $rsnapshot::params::interval_weekly,
    $interval_monthly   = $rsnapshot::params::interval_monthly,
    $config_version     = $rsnapshot::params::config_version,
    $create_root        = $rsnapshot::params::create_root,
    $cp_cmd             = $rsnapshot::params::cp_cmd,
    $rm_cmd             = $rsnapshot::params::rm_cmd,
    $rsync_cmd          = $rsnapshot::params::rsync_cmd,
    $ssh_cmd            = $rsnapshot::params::ssh_cmd,
    $logger_cmd         = $rsnapshot::params::logger_cmd,
    $du_cmd             = $rsnapshot::params::du_cmd,
    $rsnapshot_diff_cmd = $rsnapshot::params::rsnapshot_diff_cmd,
    $verbosity          = $rsnapshot::params::verbosity,
    $log_level          = $rsnapshot::params::log_level,
    $log_dir            = $rsnapshot::params::log_dir,
    $log_file           = "${log_dir}/${title}.log",
    $pid_dir            = $rsnapshot::params::pid_dir,
    $pid_file           = "${pid_dir}/${title}.pid",
) {

    # TODO

}
