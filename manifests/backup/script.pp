define rsnapshot::backup::script (
    $exec,
    $destination,
    $conf,
    $conf_file  = "/etc/rsnapshot/${conf}.conf",
) {

    concat::fragment { "${conf_file}#${title}":
        target => $conf_file,
        content => template('rsnapshot/script.fragment.erb'),
    }

}
