define rsnapshot::backup::target (
    $source,
    $destination,
    $conf,
    $conf_file  = "/etc/rsnapshot/${conf}.conf",
    $rsync_opts = undef,
) {

    concat::fragment { "${conf_file}#${title}":
        target => $conf_file,
        content => template('rsnapshot/target.fragment.erb'),
    }

}
